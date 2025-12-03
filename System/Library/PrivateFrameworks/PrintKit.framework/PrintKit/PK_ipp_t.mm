@interface PK_ipp_t
- (BOOL)isEqual:(id)equal;
- (PK_ipp_t)init;
- (PK_ipp_t)initWithCoder:(id)coder;
- (PK_ipp_t)initWithData:(id)data;
- (id)_findAttribute0:(id)attribute0 valueTag:(int)tag;
- (id)_initWithAttrs:(id)attrs;
- (id)addNewEmptyAttribute:(id)attribute groupTag:(int)tag valueTag:(int)valueTag;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (id)debugDescription;
- (id)description;
- (id)userCodableDictionary;
- (unint64_t)hash;
- (void)_addAttrToAppropriateGroup:(id)group;
- (void)_addBoolean:(int)boolean name:(id)name value:(BOOL)value;
- (void)_addCollection:(int)collection name:(id)name value:(id)value;
- (void)_addInteger:(int)integer valueTag:(int)tag name:(id)name value:(int)value;
- (void)_addIntegers:(int)integers valueTag:(int)tag name:(id)name count:(unint64_t)count adder:(id)adder;
- (void)_addOctetString:(int)string name:(id)name data:(const void *)data length:(int)length;
- (void)_addRange:(int)range name:(id)name lower:(int)lower upper:(int)upper;
- (void)_addRanges:(int)ranges name:(id)name values:(id)values;
- (void)_addResolution:(int)resolution name:(id)name unit:(int)unit xres:(int)xres yres:(int)yres;
- (void)_addString:(int)string valueTag:(int)tag name:(id)name lang:(id)lang value:(id)value;
- (void)_addStrings:(int)strings valueTag:(int)tag name:(id)name lang:(id)lang values:(id)values;
- (void)_deleteAttribute:(id)attribute;
- (void)_withGroupingBehavior:(id)behavior;
- (void)encodeWithCoder:(id)coder;
- (void)enumerateAttributes:(id)attributes;
- (void)replaceOrAddAttribute:(id)attribute withAttribute:(id)withAttribute settingGroup:(int)group;
- (void)withNewAttr:(id)attr groupTag:(int)tag valueTag:(int)valueTag apply:(id)apply;
@end

@implementation PK_ipp_t

- (PK_ipp_t)init
{
  v6.receiver = self;
  v6.super_class = PK_ipp_t;
  v2 = [(PK_ipp_t *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attrs = v2->_attrs;
    v2->_attrs = v3;
  }

  return v2;
}

- (id)_initWithAttrs:(id)attrs
{
  v18 = *MEMORY[0x277D85DE8];
  attrsCopy = attrs;
  v5 = [(PK_ipp_t *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = attrsCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          attrs = v5->_attrs;
          v11 = [*(*(&v13 + 1) + 8 * v9) copy];
          [(NSMutableArray *)attrs addObject:v11];

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return v5;
}

- (void)_addAttrToAppropriateGroup:(id)group
{
  groupCopy = group;
  v4 = [(NSMutableArray *)self->_attrs count];
  group_tag = [groupCopy group_tag];
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = group_tag;
  v7 = 0;
  v8 = -1;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_attrs objectAtIndexedSubscript:v7];
    if ([v9 group_tag] != v6)
    {
      break;
    }

    v8 = ++v7;
LABEL_7:

    if (v7 == v4)
    {
      goto LABEL_10;
    }
  }

  if (v8 == -1)
  {
    ++v7;
    goto LABEL_7;
  }

LABEL_10:
  if (v8 != -1 && v8 < v4)
  {
    [(NSMutableArray *)self->_attrs insertObject:groupCopy atIndex:v8];
    goto LABEL_14;
  }

LABEL_13:
  [(NSMutableArray *)self->_attrs addObject:groupCopy];
LABEL_14:
}

- (void)_withGroupingBehavior:(id)behavior
{
  behaviorCopy = behavior;
  addAttributesInAppropriateGroups = self->_addAttributesInAppropriateGroups;
  self->_addAttributesInAppropriateGroups = 1;
  v6 = behaviorCopy;
  (*(behaviorCopy + 2))(behaviorCopy, self);
  self->_addAttributesInAppropriateGroups = addAttributesInAppropriateGroups;
}

- (PK_ipp_t)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dataRepresentation"];
  v6 = [(PK_ipp_t *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataRepresentation = [(PK_ipp_t *)self dataRepresentation];
  [coderCopy encodeObject:dataRepresentation forKey:@"_dataRepresentation"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PK_ipp_t;
  v4 = [(PK_ipp_t *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ { %d attrs @ %p }", v4, -[NSMutableArray count](self->_attrs, "count"), self->_attrs];

  return v5;
}

- (id)debugDescription
{
  userCodableDictionary = [(PK_ipp_t *)self userCodableDictionary];
  allKeys = [userCodableDictionary allKeys];
  firstObject = [allKeys firstObject];

  v5 = MEMORY[0x277CCACA8];
  v6 = [userCodableDictionary objectForKeyedSubscript:firstObject];
  v7 = [v5 stringWithFormat:@"%@ { %@ }", firstObject, v6];

  return v7;
}

- (id)userCodableDictionary
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  attrs = self->_attrs;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__PK_ipp_t_userCodableDictionary__block_invoke;
  v13[3] = &unk_279A8FF80;
  v5 = v3;
  v14 = v5;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v13];
  v6 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = PK_ipp_t;
  v7 = [(PK_ipp_t *)&v12 description];
  _descriptionLeader = [(PK_ipp_t *)self _descriptionLeader];
  v9 = [v6 stringWithFormat:@"%@ %@", v7, _descriptionLeader];

  v15 = v9;
  v16[0] = v5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  return v10;
}

- (void)enumerateAttributes:(id)attributes
{
  attributesCopy = attributes;
  attrs = self->_attrs;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__PK_ipp_t_enumerateAttributes___block_invoke;
  v7[3] = &unk_279A8FFA8;
  v8 = attributesCopy;
  v6 = attributesCopy;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v7];
}

- (void)replaceOrAddAttribute:(id)attribute withAttribute:(id)withAttribute settingGroup:(int)group
{
  v5 = *&group;
  attributeCopy = attribute;
  withAttributeCopy = withAttribute;
  attrs = self->_attrs;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__PK_ipp_t_replaceOrAddAttribute_withAttribute_settingGroup___block_invoke;
  v15[3] = &unk_279A8FFD0;
  v11 = attributeCopy;
  v16 = v11;
  v12 = [(NSMutableArray *)attrs indexOfObjectPassingTest:v15];
  v13 = [withAttributeCopy _copySettingGroup:v5];
  v14 = self->_attrs;
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)v14 addObject:v13];
  }

  else
  {
    [(NSMutableArray *)v14 replaceObjectAtIndex:v12 withObject:v13];
  }
}

- (PK_ipp_t)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(PK_ipp_t *)self init];
  if (v5)
  {
    v17 = 0;
    v6 = dataCopy;
    v18 = v6;
    [(PK_ipp_t *)v5 setState:0];
    v7 = objc_autoreleasePoolPush();
    do
    {
      v8 = ippReadIO(&v17, _read_cb, v5);
      v9 = v8;
    }

    while (v8 != -1 && v8 != 3);
    objc_autoreleasePoolPop(v7);
    if (v9 == 3)
    {
      v11 = [v6 length];
      if (v11 - v17 < 1)
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [v6 subdataWithRange:?];
      dataRemaining = v5->_dataRemaining;
      v5->_dataRemaining = v12;
    }

    else
    {
      v14 = _PKLogCategory(PKLogCategoryDefault[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_25F5FC000, v14, OS_LOG_TYPE_DEFAULT, "Couldn't convert data to ipp", v16, 2u);
      }

      dataRemaining = v5;
      v5 = 0;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v5;
}

- (id)dataRepresentation
{
  [(PK_ipp_t *)self setState:0];
  v3 = [MEMORY[0x277CBEB28] dataWithCapacity:0];
  v4 = objc_autoreleasePoolPush();
  ippWriteIO(v3, _write_cb, self);
  objc_autoreleasePoolPop(v4);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  dataRepresentation = [(PK_ipp_t *)self dataRepresentation];
  dataRepresentation2 = [equalCopy dataRepresentation];
  v7 = [dataRepresentation isEqual:dataRepresentation2];

  return v7;
}

- (unint64_t)hash
{
  dataRepresentation = [(PK_ipp_t *)self dataRepresentation];
  v3 = [dataRepresentation hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  dataRepresentation = [(PK_ipp_t *)self dataRepresentation];
  v4 = [objc_alloc(objc_opt_class()) initWithData:dataRepresentation];

  return v4;
}

- (void)withNewAttr:(id)attr groupTag:(int)tag valueTag:(int)valueTag apply:(id)apply
{
  v7 = *&valueTag;
  v8 = *&tag;
  attrCopy = attr;
  applyCopy = apply;
  v11 = [[PK_ipp_attribute_t alloc] initWithName:attrCopy group:v8 value:v7];
  applyCopy[2](applyCopy, v11);
  if (self->_addAttributesInAppropriateGroups)
  {
    [(PK_ipp_t *)self _addAttrToAppropriateGroup:v11];
  }

  else
  {
    [(NSMutableArray *)self->_attrs addObject:v11];
  }
}

- (id)addNewEmptyAttribute:(id)attribute groupTag:(int)tag valueTag:(int)valueTag
{
  v5 = *&valueTag;
  v6 = *&tag;
  attributeCopy = attribute;
  v9 = [[PK_ipp_attribute_t alloc] initWithName:attributeCopy group:v6 value:v5];
  if (self->_addAttributesInAppropriateGroups)
  {
    [(PK_ipp_t *)self _addAttrToAppropriateGroup:v9];
  }

  else
  {
    [(NSMutableArray *)self->_attrs addObject:v9];
  }

  return v9;
}

- (void)_addRange:(int)range name:(id)name lower:(int)lower upper:(int)upper
{
  v8 = *&range;
  nameCopy = name;
  if (nameCopy && v8 <= 5 && v8 != 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__PK_ipp_t__addRange_name_lower_upper___block_invoke;
    v11[3] = &__block_descriptor_40_e28_v16__0__PK_ipp_attribute_t_8l;
    lowerCopy = lower;
    upperCopy = upper;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v8 valueTag:51 apply:v11];
  }
}

- (void)_addRanges:(int)ranges name:(id)name values:(id)values
{
  v6 = *&ranges;
  nameCopy = name;
  valuesCopy = values;
  v10 = valuesCopy;
  if (nameCopy && v6 <= 5 && v6 != 3 && [valuesCopy count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__PK_ipp_t__addRanges_name_values___block_invoke;
    v11[3] = &unk_279A90060;
    v12 = v10;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v6 valueTag:51 apply:v11];
  }
}

- (void)_addBoolean:(int)boolean name:(id)name value:(BOOL)value
{
  v6 = *&boolean;
  nameCopy = name;
  if (nameCopy && v6 <= 5 && v6 != 3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__PK_ipp_t__addBoolean_name_value___block_invoke;
    v9[3] = &__block_descriptor_33_e28_v16__0__PK_ipp_attribute_t_8l;
    valueCopy = value;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v6 valueTag:34 apply:v9];
  }
}

- (void)_addInteger:(int)integer valueTag:(int)tag name:(id)name value:(int)value
{
  v7 = *&tag;
  v8 = *&integer;
  nameCopy = name;
  if (nameCopy && v8 <= 5 && v8 != 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__PK_ipp_t__addInteger_valueTag_name_value___block_invoke;
    v11[3] = &__block_descriptor_36_e28_v16__0__PK_ipp_attribute_t_8l;
    valueCopy = value;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v8 valueTag:v7 apply:v11];
  }
}

- (void)_addString:(int)string valueTag:(int)tag name:(id)name lang:(id)lang value:(id)value
{
  v9 = *&tag;
  v10 = *&string;
  v17[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  langCopy = lang;
  valueCopy = value;
  v15 = valueCopy;
  if (valueCopy && v10 <= 5 && v10 != 3)
  {
    v17[0] = valueCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(PK_ipp_t *)self _addStrings:v10 valueTag:v9 name:nameCopy lang:langCopy values:v16];
  }
}

- (void)_addStrings:(int)strings valueTag:(int)tag name:(id)name lang:(id)lang values:(id)values
{
  v9 = *&tag;
  v10 = *&strings;
  nameCopy = name;
  langCopy = lang;
  valuesCopy = values;
  v15 = valuesCopy;
  if (nameCopy && v10 <= 5 && v10 != 3 && [valuesCopy count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__PK_ipp_t__addStrings_valueTag_name_lang_values___block_invoke;
    v16[3] = &unk_279A90108;
    v17 = v15;
    v18 = langCopy;
    v19 = v9;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v10 valueTag:v9 apply:v16];
  }
}

- (void)_addCollection:(int)collection name:(id)name value:(id)value
{
  v6 = *&collection;
  nameCopy = name;
  valueCopy = value;
  v10 = valueCopy;
  if (nameCopy && v6 <= 5 && v6 != 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__PK_ipp_t__addCollection_name_value___block_invoke;
    v11[3] = &unk_279A90060;
    v12 = valueCopy;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v6 valueTag:52 apply:v11];
  }
}

- (void)_addResolution:(int)resolution name:(id)name unit:(int)unit xres:(int)xres yres:(int)yres
{
  v10 = *&resolution;
  nameCopy = name;
  if (nameCopy && v10 <= 5 && v10 != 3 && ((yres | xres) & 0x80000000) == 0 && (unit - 3) < 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__PK_ipp_t__addResolution_name_unit_xres_yres___block_invoke;
    v13[3] = &__block_descriptor_44_e28_v16__0__PK_ipp_attribute_t_8l;
    xresCopy = xres;
    yresCopy = yres;
    unitCopy = unit;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v10 valueTag:50 apply:v13];
  }
}

- (void)_addOctetString:(int)string name:(id)name data:(const void *)data length:(int)length
{
  v8 = *&string;
  nameCopy = name;
  if (nameCopy && v8 <= 5 && v8 != 3 && !(length >> 15))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__PK_ipp_t__addOctetString_name_data_length___block_invoke;
    v11[3] = &__block_descriptor_44_e28_v16__0__PK_ipp_attribute_t_8l;
    v11[4] = data;
    lengthCopy = length;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v8 valueTag:48 apply:v11];
  }
}

- (void)_deleteAttribute:(id)attribute
{
  attributeCopy = attribute;
  v4 = [(NSMutableArray *)self->_attrs indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_attrs removeObjectAtIndex:v4];
  }
}

- (void)_addIntegers:(int)integers valueTag:(int)tag name:(id)name count:(unint64_t)count adder:(id)adder
{
  v9 = *&tag;
  v10 = *&integers;
  nameCopy = name;
  adderCopy = adder;
  v14 = adderCopy;
  if (nameCopy && v10 <= 5 && v10 != 3 && count)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__PK_ipp_t__addIntegers_valueTag_name_count_adder___block_invoke;
    v15[3] = &unk_279A901C0;
    v16 = adderCopy;
    countCopy = count;
    [(PK_ipp_t *)self withNewAttr:nameCopy groupTag:v10 valueTag:v9 apply:v15];
  }
}

- (id)_findAttribute0:(id)attribute0 valueTag:(int)tag
{
  attribute0Copy = attribute0;
  v7 = attribute0Copy;
  if (attribute0Copy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    lowercaseString = [attribute0Copy lowercaseString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__PK_ipp_t__findAttribute0_valueTag___block_invoke;
    v12[3] = &unk_279A901E8;
    v13 = lowercaseString;
    v14 = &v16;
    tagCopy = tag;
    v9 = lowercaseString;
    [(PK_ipp_t *)self enumerateAttributes:v12];
    v10 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end