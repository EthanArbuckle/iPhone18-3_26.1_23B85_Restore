@interface POXSComplexTypeDefinition
+ (id)_descriptionForValue:(id)value prefix:(id)prefix;
- (BOOL)flattenMultiValueElementWithName:(id)name;
- (NSArray)attributes;
- (NSArray)elements;
- (NSArray)namespaces;
- (POXSComplexTypeDefinition)init;
- (id)_attributeForName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)maxCountForElementName:(id)name;
- (unint64_t)minCountForElementName:(id)name;
- (void)_setAttribute:(id)attribute forName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes;
- (void)addAttributeWithName:(id)name type:(Class)type isSpecifiedKey:(id)key;
- (void)addAttributeWithName:(id)name type:(Class)type namespaceURI:(id)i;
- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type isSpecifiedKey:(id)key;
- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type maxOccurs:(unint64_t)occurs minOccurs:(unint64_t)minOccurs flattenMultiValue:(BOOL)value;
- (void)setContentPropertyName:(id)name type:(Class)type;
- (void)setIsSpecifiedKey:(id)key onElementWithName:(id)name;
@end

@implementation POXSComplexTypeDefinition

- (POXSComplexTypeDefinition)init
{
  v16.receiver = self;
  v16.super_class = POXSComplexTypeDefinition;
  v2 = [(POXSDefinition *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    attributes = v2->_attributes;
    v2->_attributes = v3;

    v5 = objc_opt_new();
    elements = v2->_elements;
    v2->_elements = v5;

    v7 = objc_opt_new();
    namespaces = v2->_namespaces;
    v2->_namespaces = v7;

    v9 = objc_opt_new();
    properties = v2->_properties;
    v2->_properties = v9;

    v11 = objc_opt_new();
    elementAttributes = v2->_elementAttributes;
    v2->_elementAttributes = v11;

    v13 = objc_opt_new();
    attributeAttributes = v2->_attributeAttributes;
    v2->_attributeAttributes = v13;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21.receiver = self;
  v21.super_class = POXSComplexTypeDefinition;
  v5 = [(POXSDefinition *)&v21 copyWithZone:?];
  v6 = [(NSMutableArray *)self->_attributes mutableCopyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSMutableArray *)self->_elements mutableCopyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSMutableArray *)self->_namespaces mutableCopyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSMutableDictionary *)self->_properties mutableCopyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSMutableDictionary *)self->_elementAttributes mutableCopyWithZone:zone];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSMutableDictionary *)self->_attributeAttributes mutableCopyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_contentPropertyName copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

- (NSArray)attributes
{
  v2 = [(NSMutableArray *)self->_attributes copy];

  return v2;
}

- (NSArray)elements
{
  v2 = [(NSMutableArray *)self->_elements copy];

  return v2;
}

- (NSArray)namespaces
{
  v2 = [(NSMutableArray *)self->_namespaces copy];

  return v2;
}

- (void)addAttributeWithName:(id)name type:(Class)type isSpecifiedKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  [(NSMutableArray *)self->_attributes addObject:nameCopy];
  [(POXSDefinition *)self setType:type forName:nameCopy];
  if (keyCopy)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:keyCopy forName:@"isSpecifiedKey" ofAttributeWithName:nameCopy];
  }
}

- (void)addAttributeWithName:(id)name type:(Class)type namespaceURI:(id)i
{
  nameCopy = name;
  iCopy = i;
  [(NSMutableArray *)self->_attributes addObject:nameCopy];
  [(POXSDefinition *)self setType:type forName:nameCopy];
  if (iCopy)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:iCopy forName:@"namespace" ofAttributeWithName:nameCopy];
  }
}

- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type isSpecifiedKey:(id)key
{
  keyCopy = key;
  nameCopy = name;
  [(POXSComplexTypeDefinition *)self addElementWithName:nameCopy namespaceURI:i type:type maxOccurs:1 minOccurs:1];
  [(POXSComplexTypeDefinition *)self setIsSpecifiedKey:keyCopy onElementWithName:nameCopy];
}

- (void)addElementWithName:(id)name namespaceURI:(id)i type:(Class)type maxOccurs:(unint64_t)occurs minOccurs:(unint64_t)minOccurs flattenMultiValue:(BOOL)value
{
  valueCopy = value;
  v38 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  iCopy = i;
  v16 = [[POXSElement alloc] initWithElementName:nameCopy namespaceURI:iCopy type:type];
  [(NSMutableArray *)self->_elements addObject:v16];
  [(POXSComplexTypeDefinition *)self setProperty:nameCopy forName:nameCopy];
  [(POXSDefinition *)self setType:type forName:nameCopy];
  if ([(objc_class *)type isSubclassOfClass:objc_opt_class()])
  {
    minOccursCopy = minOccurs;
    v30 = v16;
    v31 = iCopy;
    v32 = valueCopy;
    [POXSDefinitions definitionForType:type];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = v36 = 0u;
    elements = [v28 elements];
    v18 = [elements countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v34;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(elements);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          elementName = [v22 elementName];
          [(POXSComplexTypeDefinition *)self setProperty:nameCopy forName:elementName];

          elementName2 = [v22 elementName];
          [(POXSDefinition *)self setType:type forName:elementName2];
        }

        v19 = [elements countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    valueCopy = v32;
    v16 = v30;
    iCopy = v31;
    minOccurs = minOccursCopy;
  }

  if (occurs != 1)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:occurs];
    [(POXSComplexTypeDefinition *)self _setAttribute:v25 forName:@"maxCount" ofElementWithName:nameCopy];
  }

  if (minOccurs != 1)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:occurs];
    [(POXSComplexTypeDefinition *)self _setAttribute:v26 forName:@"minCount" ofElementWithName:nameCopy];
  }

  if (valueCopy)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:MEMORY[0x277CBEC38] forName:@"flattenMultiValue" ofElementWithName:nameCopy];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)setContentPropertyName:(id)name type:(Class)type
{
  nameCopy = name;
  if (self->_contentPropertyName != nameCopy)
  {
    objc_storeStrong(&self->_contentPropertyName, name);
  }

  [(POXSDefinition *)self setType:type forName:nameCopy];
}

- (void)setIsSpecifiedKey:(id)key onElementWithName:(id)name
{
  if (key)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:key forName:@"isSpecifiedKey" ofElementWithName:name];
  }
}

- (unint64_t)maxCountForElementName:(id)name
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"maxCount" ofElementWithName:name];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (unint64_t)minCountForElementName:(id)name
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"minCount" ofElementWithName:name];
  v4 = v3;
  if (v3)
  {
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 1;
  }

  return unsignedIntegerValue;
}

- (BOOL)flattenMultiValueElementWithName:(id)name
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"flattenMultiValue" ofElementWithName:name];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_setAttribute:(id)attribute forName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes
{
  attributeCopy = attribute;
  nameCopy = name;
  withNameCopy = withName;
  attributesCopy = attributes;
  dictionary = [attributesCopy objectForKeyedSubscript:withNameCopy];
  if (!dictionary)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [attributesCopy setObject:dictionary forKeyedSubscript:withNameCopy];
  }

  [dictionary setObject:attributeCopy forKeyedSubscript:nameCopy];
}

- (id)_attributeForName:(id)name ofNodeWithName:(id)withName attributes:(id)attributes
{
  nameCopy = name;
  v8 = [attributes objectForKeyedSubscript:withName];
  v9 = [v8 objectForKeyedSubscript:nameCopy];

  return v9;
}

+ (id)_descriptionForValue:(id)value prefix:(id)prefix
{
  v80 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  prefixCopy = prefix;
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"<%@> {\n", objc_opt_class()];
  v8 = [POXSDefinitions definitionForType:objc_opt_class()];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_53;
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v52 = v8;
  attributes = [v8 attributes];
  v10 = [attributes countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v74;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v74 != v12)
        {
          objc_enumerationMutation(attributes);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        v15 = [valueCopy valueForKey:v14];
        [string appendFormat:@"%@    %@: %@;\n", prefixCopy, v14, v15];
      }

      v11 = [attributes countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v11);
  }

  elements = [v52 elements];
  if ([valueCopy conformsToProtocol:&unk_2870B7158])
  {
    elementsNeedRedaction = [valueCopy elementsNeedRedaction];
    allowedElementKeys = [valueCopy allowedElementKeys];
  }

  else
  {
    allowedElementKeys = 0;
    elementsNeedRedaction = 0;
  }

  v17 = 0x279A3D000uLL;
  v18 = 0x279A3D000uLL;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v19 = elements;
  v20 = [v19 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (!v20)
  {
    goto LABEL_52;
  }

  v21 = v20;
  v22 = 0;
  v23 = 0;
  v58 = *v70;
  v56 = v19;
  while (2)
  {
    v24 = 0;
    v61 = v23;
    v51 = v23 + v21;
    v53 = v21;
    do
    {
      if (*v70 != v58)
      {
        v25 = v24;
        objc_enumerationMutation(v19);
        v24 = v25;
      }

      v60 = v24;
      elementName = [*(*(&v69 + 1) + 8 * v24) elementName];
      v63 = [valueCopy valueForKey:?];
      if (v63)
      {
        v59 = [*(v17 + 1648) definitionForType:objc_opt_class()];
        if (elementsNeedRedaction && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v26 = *(v18 + 1632), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ([allowedElementKeys containsObject:elementName] & 1) == 0)
        {
          [string appendFormat:@"%@    %@ = <>;\n", prefixCopy, elementName, v50];
        }

        else
        {
          v27 = *(v18 + 1632);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = v22;
              v31 = v63;
              [string appendFormat:@"%@    %@ = [\n", prefixCopy, elementName];
              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v32 = v31;
              v33 = [v32 countByEnumeratingWithState:&v65 objects:v77 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = 0;
                v36 = *v66;
                while (2)
                {
                  for (j = 0; j != v34; ++j)
                  {
                    if (*v66 != v36)
                    {
                      objc_enumerationMutation(v32);
                    }

                    v38 = *(*(&v65 + 1) + 8 * j);
                    v39 = [prefixCopy stringByAppendingString:@"        "];
                    v40 = [self _descriptionForValue:v38 prefix:v39];
                    [string appendFormat:@"%@        [%lu] = %@\n", prefixCopy, v35, v40];

                    if (v35 == 4)
                    {
                      v41 = [v32 count];
                      if (v41 != 5)
                      {
                        [string appendFormat:@"%@        -- %lu remaining entries in array --\n", prefixCopy, v41 - 5];
                        goto LABEL_41;
                      }
                    }

                    ++v35;
                  }

                  v34 = [v32 countByEnumeratingWithState:&v65 objects:v77 count:16];
                  if (v34)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_41:

              [string appendFormat:@"%@    ]\n", prefixCopy];
              v17 = 0x279A3D000;
              v18 = 0x279A3D000;
              v19 = v56;
              v21 = v53;
              v22 = v54;
              goto LABEL_45;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![v63 integerValue])
              {
                goto LABEL_45;
              }
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v63;
                calendar = [v42 calendar];
                [calendar dateFromComponents:v42];
                v45 = v44 = v22;

                [string appendFormat:@"%@    %@ = %@;\n", prefixCopy, elementName, v45];
                v22 = v44;
                v21 = v53;

                goto LABEL_45;
              }
            }

            [string appendFormat:@"%@    %@ = %@;\n", prefixCopy, elementName, v63];
            goto LABEL_45;
          }

          [prefixCopy stringByAppendingString:@"    "];
          v29 = v28 = v22;
          v30 = [self _descriptionForValue:v63 prefix:v29];
          [string appendFormat:@"%@    %@ = %@\n", prefixCopy, elementName, v30];

          v19 = v56;
          v22 = v28 + 1;
        }

LABEL_45:
      }

      v46 = v61 + 1;
      if (v22 == 5)
      {
        v47 = [v19 count];
        v46 = v61 + 1;
        if (v47 != v61 + 1)
        {
          [string appendFormat:@"%@    -- %lu remaining elements --\n", prefixCopy, v47 - (v61 + 1)];

          goto LABEL_52;
        }
      }

      v61 = v46;

      v24 = v60 + 1;
    }

    while (v60 + 1 != v21);
    v21 = [v19 countByEnumeratingWithState:&v69 objects:v78 count:16];
    v23 = v51;
    if (v21)
    {
      continue;
    }

    break;
  }

LABEL_52:

  v8 = v52;
LABEL_53:
  [string appendFormat:@"%@}\n", prefixCopy];

  v48 = *MEMORY[0x277D85DE8];

  return string;
}

@end