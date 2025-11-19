@interface POXSComplexTypeDefinition
+ (id)_descriptionForValue:(id)a3 prefix:(id)a4;
- (BOOL)flattenMultiValueElementWithName:(id)a3;
- (NSArray)attributes;
- (NSArray)elements;
- (NSArray)namespaces;
- (POXSComplexTypeDefinition)init;
- (id)_attributeForName:(id)a3 ofNodeWithName:(id)a4 attributes:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)maxCountForElementName:(id)a3;
- (unint64_t)minCountForElementName:(id)a3;
- (void)_setAttribute:(id)a3 forName:(id)a4 ofNodeWithName:(id)a5 attributes:(id)a6;
- (void)addAttributeWithName:(id)a3 type:(Class)a4 isSpecifiedKey:(id)a5;
- (void)addAttributeWithName:(id)a3 type:(Class)a4 namespaceURI:(id)a5;
- (void)addElementWithName:(id)a3 namespaceURI:(id)a4 type:(Class)a5 isSpecifiedKey:(id)a6;
- (void)addElementWithName:(id)a3 namespaceURI:(id)a4 type:(Class)a5 maxOccurs:(unint64_t)a6 minOccurs:(unint64_t)a7 flattenMultiValue:(BOOL)a8;
- (void)setContentPropertyName:(id)a3 type:(Class)a4;
- (void)setIsSpecifiedKey:(id)a3 onElementWithName:(id)a4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v21.receiver = self;
  v21.super_class = POXSComplexTypeDefinition;
  v5 = [(POXSDefinition *)&v21 copyWithZone:?];
  v6 = [(NSMutableArray *)self->_attributes mutableCopyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSMutableArray *)self->_elements mutableCopyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSMutableArray *)self->_namespaces mutableCopyWithZone:a3];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSMutableDictionary *)self->_properties mutableCopyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSMutableDictionary *)self->_elementAttributes mutableCopyWithZone:a3];
  v15 = v5[4];
  v5[4] = v14;

  v16 = [(NSMutableDictionary *)self->_attributeAttributes mutableCopyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_contentPropertyName copyWithZone:a3];
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

- (void)addAttributeWithName:(id)a3 type:(Class)a4 isSpecifiedKey:(id)a5
{
  v9 = a3;
  v8 = a5;
  [(NSMutableArray *)self->_attributes addObject:v9];
  [(POXSDefinition *)self setType:a4 forName:v9];
  if (v8)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:v8 forName:@"isSpecifiedKey" ofAttributeWithName:v9];
  }
}

- (void)addAttributeWithName:(id)a3 type:(Class)a4 namespaceURI:(id)a5
{
  v9 = a3;
  v8 = a5;
  [(NSMutableArray *)self->_attributes addObject:v9];
  [(POXSDefinition *)self setType:a4 forName:v9];
  if (v8)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:v8 forName:@"namespace" ofAttributeWithName:v9];
  }
}

- (void)addElementWithName:(id)a3 namespaceURI:(id)a4 type:(Class)a5 isSpecifiedKey:(id)a6
{
  v10 = a6;
  v11 = a3;
  [(POXSComplexTypeDefinition *)self addElementWithName:v11 namespaceURI:a4 type:a5 maxOccurs:1 minOccurs:1];
  [(POXSComplexTypeDefinition *)self setIsSpecifiedKey:v10 onElementWithName:v11];
}

- (void)addElementWithName:(id)a3 namespaceURI:(id)a4 type:(Class)a5 maxOccurs:(unint64_t)a6 minOccurs:(unint64_t)a7 flattenMultiValue:(BOOL)a8
{
  v8 = a8;
  v38 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = [[POXSElement alloc] initWithElementName:v14 namespaceURI:v15 type:a5];
  [(NSMutableArray *)self->_elements addObject:v16];
  [(POXSComplexTypeDefinition *)self setProperty:v14 forName:v14];
  [(POXSDefinition *)self setType:a5 forName:v14];
  if ([(objc_class *)a5 isSubclassOfClass:objc_opt_class()])
  {
    v29 = a7;
    v30 = v16;
    v31 = v15;
    v32 = v8;
    [POXSDefinitions definitionForType:a5];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v28 = v36 = 0u;
    v17 = [v28 elements];
    v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v33 + 1) + 8 * i);
          v23 = [v22 elementName];
          [(POXSComplexTypeDefinition *)self setProperty:v14 forName:v23];

          v24 = [v22 elementName];
          [(POXSDefinition *)self setType:a5 forName:v24];
        }

        v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v19);
    }

    v8 = v32;
    v16 = v30;
    v15 = v31;
    a7 = v29;
  }

  if (a6 != 1)
  {
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    [(POXSComplexTypeDefinition *)self _setAttribute:v25 forName:@"maxCount" ofElementWithName:v14];
  }

  if (a7 != 1)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
    [(POXSComplexTypeDefinition *)self _setAttribute:v26 forName:@"minCount" ofElementWithName:v14];
  }

  if (v8)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:MEMORY[0x277CBEC38] forName:@"flattenMultiValue" ofElementWithName:v14];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)setContentPropertyName:(id)a3 type:(Class)a4
{
  v7 = a3;
  if (self->_contentPropertyName != v7)
  {
    objc_storeStrong(&self->_contentPropertyName, a3);
  }

  [(POXSDefinition *)self setType:a4 forName:v7];
}

- (void)setIsSpecifiedKey:(id)a3 onElementWithName:(id)a4
{
  if (a3)
  {
    [(POXSComplexTypeDefinition *)self _setAttribute:a3 forName:@"isSpecifiedKey" ofElementWithName:a4];
  }
}

- (unint64_t)maxCountForElementName:(id)a3
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"maxCount" ofElementWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (unint64_t)minCountForElementName:(id)a3
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"minCount" ofElementWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)flattenMultiValueElementWithName:(id)a3
{
  v3 = [(POXSComplexTypeDefinition *)self _attributeForName:@"flattenMultiValue" ofElementWithName:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setAttribute:(id)a3 forName:(id)a4 ofNodeWithName:(id)a5 attributes:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v11 objectForKeyedSubscript:v10];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB38] dictionary];
    [v11 setObject:v12 forKeyedSubscript:v10];
  }

  [v12 setObject:v13 forKeyedSubscript:v9];
}

- (id)_attributeForName:(id)a3 ofNodeWithName:(id)a4 attributes:(id)a5
{
  v7 = a3;
  v8 = [a5 objectForKeyedSubscript:a4];
  v9 = [v8 objectForKeyedSubscript:v7];

  return v9;
}

+ (id)_descriptionForValue:(id)a3 prefix:(id)a4
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAB68] string];
  [v7 appendFormat:@"<%@> {\n", objc_opt_class()];
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
  v9 = [v8 attributes];
  v10 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v73 + 1) + 8 * i);
        v15 = [v5 valueForKey:v14];
        [v7 appendFormat:@"%@    %@: %@;\n", v6, v14, v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v11);
  }

  v16 = [v52 elements];
  if ([v5 conformsToProtocol:&unk_2870B7158])
  {
    v57 = [v5 elementsNeedRedaction];
    v55 = [v5 allowedElementKeys];
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v17 = 0x279A3D000uLL;
  v18 = 0x279A3D000uLL;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v19 = v16;
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
      v62 = [*(*(&v69 + 1) + 8 * v24) elementName];
      v63 = [v5 valueForKey:?];
      if (v63)
      {
        v59 = [*(v17 + 1648) definitionForType:objc_opt_class()];
        if (v57 && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v26 = *(v18 + 1632), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && ([v55 containsObject:v62] & 1) == 0)
        {
          [v7 appendFormat:@"%@    %@ = <>;\n", v6, v62, v50];
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
              [v7 appendFormat:@"%@    %@ = [\n", v6, v62];
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
                    v39 = [v6 stringByAppendingString:@"        "];
                    v40 = [a1 _descriptionForValue:v38 prefix:v39];
                    [v7 appendFormat:@"%@        [%lu] = %@\n", v6, v35, v40];

                    if (v35 == 4)
                    {
                      v41 = [v32 count];
                      if (v41 != 5)
                      {
                        [v7 appendFormat:@"%@        -- %lu remaining entries in array --\n", v6, v41 - 5];
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

              [v7 appendFormat:@"%@    ]\n", v6];
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
                v43 = [v42 calendar];
                [v43 dateFromComponents:v42];
                v45 = v44 = v22;

                [v7 appendFormat:@"%@    %@ = %@;\n", v6, v62, v45];
                v22 = v44;
                v21 = v53;

                goto LABEL_45;
              }
            }

            [v7 appendFormat:@"%@    %@ = %@;\n", v6, v62, v63];
            goto LABEL_45;
          }

          [v6 stringByAppendingString:@"    "];
          v29 = v28 = v22;
          v30 = [a1 _descriptionForValue:v63 prefix:v29];
          [v7 appendFormat:@"%@    %@ = %@\n", v6, v62, v30];

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
          [v7 appendFormat:@"%@    -- %lu remaining elements --\n", v6, v47 - (v61 + 1)];

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
  [v7 appendFormat:@"%@}\n", v6];

  v48 = *MEMORY[0x277D85DE8];

  return v7;
}

@end