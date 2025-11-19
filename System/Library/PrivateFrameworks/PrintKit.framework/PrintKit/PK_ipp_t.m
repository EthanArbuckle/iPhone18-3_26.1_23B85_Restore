@interface PK_ipp_t
- (BOOL)isEqual:(id)a3;
- (PK_ipp_t)init;
- (PK_ipp_t)initWithCoder:(id)a3;
- (PK_ipp_t)initWithData:(id)a3;
- (id)_findAttribute0:(id)a3 valueTag:(int)a4;
- (id)_initWithAttrs:(id)a3;
- (id)addNewEmptyAttribute:(id)a3 groupTag:(int)a4 valueTag:(int)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (id)debugDescription;
- (id)description;
- (id)userCodableDictionary;
- (unint64_t)hash;
- (void)_addAttrToAppropriateGroup:(id)a3;
- (void)_addBoolean:(int)a3 name:(id)a4 value:(BOOL)a5;
- (void)_addCollection:(int)a3 name:(id)a4 value:(id)a5;
- (void)_addInteger:(int)a3 valueTag:(int)a4 name:(id)a5 value:(int)a6;
- (void)_addIntegers:(int)a3 valueTag:(int)a4 name:(id)a5 count:(unint64_t)a6 adder:(id)a7;
- (void)_addOctetString:(int)a3 name:(id)a4 data:(const void *)a5 length:(int)a6;
- (void)_addRange:(int)a3 name:(id)a4 lower:(int)a5 upper:(int)a6;
- (void)_addRanges:(int)a3 name:(id)a4 values:(id)a5;
- (void)_addResolution:(int)a3 name:(id)a4 unit:(int)a5 xres:(int)a6 yres:(int)a7;
- (void)_addString:(int)a3 valueTag:(int)a4 name:(id)a5 lang:(id)a6 value:(id)a7;
- (void)_addStrings:(int)a3 valueTag:(int)a4 name:(id)a5 lang:(id)a6 values:(id)a7;
- (void)_deleteAttribute:(id)a3;
- (void)_withGroupingBehavior:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAttributes:(id)a3;
- (void)replaceOrAddAttribute:(id)a3 withAttribute:(id)a4 settingGroup:(int)a5;
- (void)withNewAttr:(id)a3 groupTag:(int)a4 valueTag:(int)a5 apply:(id)a6;
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

- (id)_initWithAttrs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PK_ipp_t *)self init];
  if (v5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
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

- (void)_addAttrToAppropriateGroup:(id)a3
{
  v10 = a3;
  v4 = [(NSMutableArray *)self->_attrs count];
  v5 = [v10 group_tag];
  if (!v4)
  {
    goto LABEL_13;
  }

  v6 = v5;
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
    [(NSMutableArray *)self->_attrs insertObject:v10 atIndex:v8];
    goto LABEL_14;
  }

LABEL_13:
  [(NSMutableArray *)self->_attrs addObject:v10];
LABEL_14:
}

- (void)_withGroupingBehavior:(id)a3
{
  v4 = a3;
  addAttributesInAppropriateGroups = self->_addAttributesInAppropriateGroups;
  self->_addAttributesInAppropriateGroups = 1;
  v6 = v4;
  (*(v4 + 2))(v4, self);
  self->_addAttributesInAppropriateGroups = addAttributesInAppropriateGroups;
}

- (PK_ipp_t)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dataRepresentation"];
  v6 = [(PK_ipp_t *)self initWithData:v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(PK_ipp_t *)self dataRepresentation];
  [v5 encodeObject:v4 forKey:@"_dataRepresentation"];
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
  v2 = [(PK_ipp_t *)self userCodableDictionary];
  v3 = [v2 allKeys];
  v4 = [v3 firstObject];

  v5 = MEMORY[0x277CCACA8];
  v6 = [v2 objectForKeyedSubscript:v4];
  v7 = [v5 stringWithFormat:@"%@ { %@ }", v4, v6];

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
  v8 = [(PK_ipp_t *)self _descriptionLeader];
  v9 = [v6 stringWithFormat:@"%@ %@", v7, v8];

  v15 = v9;
  v16[0] = v5;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  return v10;
}

- (void)enumerateAttributes:(id)a3
{
  v4 = a3;
  attrs = self->_attrs;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__PK_ipp_t_enumerateAttributes___block_invoke;
  v7[3] = &unk_279A8FFA8;
  v8 = v4;
  v6 = v4;
  [(NSMutableArray *)attrs enumerateObjectsUsingBlock:v7];
}

- (void)replaceOrAddAttribute:(id)a3 withAttribute:(id)a4 settingGroup:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = a4;
  attrs = self->_attrs;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__PK_ipp_t_replaceOrAddAttribute_withAttribute_settingGroup___block_invoke;
  v15[3] = &unk_279A8FFD0;
  v11 = v8;
  v16 = v11;
  v12 = [(NSMutableArray *)attrs indexOfObjectPassingTest:v15];
  v13 = [v9 _copySettingGroup:v5];
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

- (PK_ipp_t)initWithData:(id)a3
{
  v4 = a3;
  v5 = [(PK_ipp_t *)self init];
  if (v5)
  {
    v17 = 0;
    v6 = v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(PK_ipp_t *)self dataRepresentation];
  v6 = [v4 dataRepresentation];
  v7 = [v5 isEqual:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PK_ipp_t *)self dataRepresentation];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [(PK_ipp_t *)self dataRepresentation];
  v4 = [objc_alloc(objc_opt_class()) initWithData:v3];

  return v4;
}

- (void)withNewAttr:(id)a3 groupTag:(int)a4 valueTag:(int)a5 apply:(id)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v12 = a3;
  v10 = a6;
  v11 = [[PK_ipp_attribute_t alloc] initWithName:v12 group:v8 value:v7];
  v10[2](v10, v11);
  if (self->_addAttributesInAppropriateGroups)
  {
    [(PK_ipp_t *)self _addAttrToAppropriateGroup:v11];
  }

  else
  {
    [(NSMutableArray *)self->_attrs addObject:v11];
  }
}

- (id)addNewEmptyAttribute:(id)a3 groupTag:(int)a4 valueTag:(int)a5
{
  v5 = *&a5;
  v6 = *&a4;
  v8 = a3;
  v9 = [[PK_ipp_attribute_t alloc] initWithName:v8 group:v6 value:v5];
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

- (void)_addRange:(int)a3 name:(id)a4 lower:(int)a5 upper:(int)a6
{
  v8 = *&a3;
  v10 = a4;
  if (v10 && v8 <= 5 && v8 != 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __39__PK_ipp_t__addRange_name_lower_upper___block_invoke;
    v11[3] = &__block_descriptor_40_e28_v16__0__PK_ipp_attribute_t_8l;
    v12 = a5;
    v13 = a6;
    [(PK_ipp_t *)self withNewAttr:v10 groupTag:v8 valueTag:51 apply:v11];
  }
}

- (void)_addRanges:(int)a3 name:(id)a4 values:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v6 <= 5 && v6 != 3 && [v9 count])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __35__PK_ipp_t__addRanges_name_values___block_invoke;
    v11[3] = &unk_279A90060;
    v12 = v10;
    [(PK_ipp_t *)self withNewAttr:v8 groupTag:v6 valueTag:51 apply:v11];
  }
}

- (void)_addBoolean:(int)a3 name:(id)a4 value:(BOOL)a5
{
  v6 = *&a3;
  v8 = a4;
  if (v8 && v6 <= 5 && v6 != 3)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __35__PK_ipp_t__addBoolean_name_value___block_invoke;
    v9[3] = &__block_descriptor_33_e28_v16__0__PK_ipp_attribute_t_8l;
    v10 = a5;
    [(PK_ipp_t *)self withNewAttr:v8 groupTag:v6 valueTag:34 apply:v9];
  }
}

- (void)_addInteger:(int)a3 valueTag:(int)a4 name:(id)a5 value:(int)a6
{
  v7 = *&a4;
  v8 = *&a3;
  v10 = a5;
  if (v10 && v8 <= 5 && v8 != 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__PK_ipp_t__addInteger_valueTag_name_value___block_invoke;
    v11[3] = &__block_descriptor_36_e28_v16__0__PK_ipp_attribute_t_8l;
    v12 = a6;
    [(PK_ipp_t *)self withNewAttr:v10 groupTag:v8 valueTag:v7 apply:v11];
  }
}

- (void)_addString:(int)a3 valueTag:(int)a4 name:(id)a5 lang:(id)a6 value:(id)a7
{
  v9 = *&a4;
  v10 = *&a3;
  v17[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v14 && v10 <= 5 && v10 != 3)
  {
    v17[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    [(PK_ipp_t *)self _addStrings:v10 valueTag:v9 name:v12 lang:v13 values:v16];
  }
}

- (void)_addStrings:(int)a3 valueTag:(int)a4 name:(id)a5 lang:(id)a6 values:(id)a7
{
  v9 = *&a4;
  v10 = *&a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = v14;
  if (v12 && v10 <= 5 && v10 != 3 && [v14 count])
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __50__PK_ipp_t__addStrings_valueTag_name_lang_values___block_invoke;
    v16[3] = &unk_279A90108;
    v17 = v15;
    v18 = v13;
    v19 = v9;
    [(PK_ipp_t *)self withNewAttr:v12 groupTag:v10 valueTag:v9 apply:v16];
  }
}

- (void)_addCollection:(int)a3 name:(id)a4 value:(id)a5
{
  v6 = *&a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v8 && v6 <= 5 && v6 != 3)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __38__PK_ipp_t__addCollection_name_value___block_invoke;
    v11[3] = &unk_279A90060;
    v12 = v9;
    [(PK_ipp_t *)self withNewAttr:v8 groupTag:v6 valueTag:52 apply:v11];
  }
}

- (void)_addResolution:(int)a3 name:(id)a4 unit:(int)a5 xres:(int)a6 yres:(int)a7
{
  v10 = *&a3;
  v12 = a4;
  if (v12 && v10 <= 5 && v10 != 3 && ((a7 | a6) & 0x80000000) == 0 && (a5 - 3) < 2)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__PK_ipp_t__addResolution_name_unit_xres_yres___block_invoke;
    v13[3] = &__block_descriptor_44_e28_v16__0__PK_ipp_attribute_t_8l;
    v14 = a6;
    v15 = a7;
    v16 = a5;
    [(PK_ipp_t *)self withNewAttr:v12 groupTag:v10 valueTag:50 apply:v13];
  }
}

- (void)_addOctetString:(int)a3 name:(id)a4 data:(const void *)a5 length:(int)a6
{
  v8 = *&a3;
  v10 = a4;
  if (v10 && v8 <= 5 && v8 != 3 && !(a6 >> 15))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__PK_ipp_t__addOctetString_name_data_length___block_invoke;
    v11[3] = &__block_descriptor_44_e28_v16__0__PK_ipp_attribute_t_8l;
    v11[4] = a5;
    v12 = a6;
    [(PK_ipp_t *)self withNewAttr:v10 groupTag:v8 valueTag:48 apply:v11];
  }
}

- (void)_deleteAttribute:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->_attrs indexOfObject:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(NSMutableArray *)self->_attrs removeObjectAtIndex:v4];
  }
}

- (void)_addIntegers:(int)a3 valueTag:(int)a4 name:(id)a5 count:(unint64_t)a6 adder:(id)a7
{
  v9 = *&a4;
  v10 = *&a3;
  v12 = a5;
  v13 = a7;
  v14 = v13;
  if (v12 && v10 <= 5 && v10 != 3 && a6)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __51__PK_ipp_t__addIntegers_valueTag_name_count_adder___block_invoke;
    v15[3] = &unk_279A901C0;
    v16 = v13;
    v17 = a6;
    [(PK_ipp_t *)self withNewAttr:v12 groupTag:v10 valueTag:v9 apply:v15];
  }
}

- (id)_findAttribute0:(id)a3 valueTag:(int)a4
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    v8 = [v6 lowercaseString];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__PK_ipp_t__findAttribute0_valueTag___block_invoke;
    v12[3] = &unk_279A901E8;
    v13 = v8;
    v14 = &v16;
    v15 = a4;
    v9 = v8;
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