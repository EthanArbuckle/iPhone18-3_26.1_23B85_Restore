@interface POSOAPDocument
+ (id)definition;
- (id)XMLStringWithOptions:(unint64_t)options;
- (void)_XMLAttributeStringWithPrefix:(id)prefix name:(id)name value:(id)value options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLAttributesStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLQualifiedNameForNamespace:(id)namespace elementName:(id)name options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string;
- (void)_XMLStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation POSOAPDocument

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"Envelope" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

- (id)XMLStringWithOptions:(unint64_t)options
{
  string = [MEMORY[0x277CCAB68] string];
  [(POSOAPDocument *)self _XMLStringWithOptions:options appendingToString:string];

  return string;
}

- (void)_XMLQualifiedNameForNamespace:(id)namespace elementName:(id)name options:(unint64_t)options appendingToString:(id)string
{
  nameCopy = name;
  stringCopy = string;
  v9 = [POXSNamespaces prefixForNamespaceURI:namespace];
  if ([v9 length])
  {
    [stringCopy appendString:v9];
    [stringCopy appendString:@":"];
  }

  [stringCopy appendString:nameCopy];
}

- (void)_XMLAttributeStringWithPrefix:(id)prefix name:(id)name value:(id)value options:(unint64_t)options appendingToString:(id)string
{
  prefixCopy = prefix;
  nameCopy = name;
  stringCopy = string;
  valueCopy = value;
  [stringCopy appendString:@" "];
  if ([prefixCopy length])
  {
    [stringCopy appendString:prefixCopy];
    if (![nameCopy length])
    {
      goto LABEL_6;
    }

    [stringCopy appendString:@":"];
  }

  else if (![nameCopy length])
  {
    goto LABEL_6;
  }

  [stringCopy appendString:nameCopy];
LABEL_6:
  [stringCopy appendString:@"="];
  [stringCopy appendString:valueCopy];

  [stringCopy appendString:@""];
}

- (void)_XMLAttributesStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string
{
  v45 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  stringCopy = string;
  [POXSDefinitions definitionForType:objc_opt_class()];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = v42 = 0u;
  obj = [v34 attributes];
  v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v32 = typeCopy;
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        v12 = [typeCopy valueForKey:{v11, stringCopy}];
        if (v12)
        {
          v13 = [v34 isSpecifiedKeyForAttributeName:v11];
          if (!v13 || ([typeCopy valueForKey:v13], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v15))
          {
            v16 = +[POXSDefinitions definitionForType:](POXSDefinitions, "definitionForType:", [v34 typeForName:v11]);
            v17 = [v34 namespaceForAttributeName:v11];
            v18 = [v16 stringFromValue:v12];
            if (v18)
            {
              v19 = [POXSNamespaces prefixForNamespaceURI:v17];
              [(POSOAPDocument *)self _XMLAttributeStringWithPrefix:v19 name:v11 value:v18 options:options appendingToString:stringCopy];

              typeCopy = v32;
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v8);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  namespaces = [v34 namespaces];
  v21 = [namespaces countByEnumeratingWithState:&v35 objects:v43 count:16];
  v22 = stringCopy;
  if (v21)
  {
    v23 = v21;
    v24 = *v36;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(namespaces);
        }

        v26 = *(*(&v35 + 1) + 8 * j);
        stringCopy = [POXSNamespaces prefixForNamespaceURI:v26, stringCopy];
        [(POSOAPDocument *)self _XMLAttributeStringWithPrefix:@"xmlns" name:stringCopy value:v26 options:options appendingToString:v22];
      }

      v23 = [namespaces countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v23);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_XMLStringWithComplexType:(id)type options:(unint64_t)options appendingToString:(id)string
{
  v121 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  stringCopy = string;
  v10 = [POXSDefinitions definitionForType:objc_opt_class()];
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  obj = [v10 elements];
  v98 = [obj countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v98)
  {
    v97 = *v116;
    v92 = typeCopy;
    v93 = v10;
    selfCopy = self;
    do
    {
      v11 = 0;
      do
      {
        if (*v116 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v100 = v11;
        v12 = *(*(&v115 + 1) + 8 * v11);
        elementName = [v12 elementName];
        v14 = [typeCopy valueForKey:elementName];

        v101 = v14;
        if (v14)
        {
          v109 = v12;
          elementName2 = [v12 elementName];
          v16 = [v10 typeForName:elementName2];
          v105 = [POXSDefinitions definitionForType:v16];
          v99 = elementName2;
          v17 = [v10 isSpecifiedKeyForElementName:elementName2];
          if (v17 && ([typeCopy valueForKey:v17], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, !v19))
          {
            v31 = v105;
          }

          else
          {
            v96 = v17;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();
              if (isKindOfClass)
              {
                v20 = v101;
                v21 = v109;
                if ([v10 flattenMultiValueElementWithName:v99])
                {
                  v94 = 0;
                }

                else
                {
                  [stringCopy appendString:@"<"];
                  namespaceURI = [v109 namespaceURI];
                  elementName3 = [v109 elementName];
                  [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI elementName:elementName3 options:options appendingToString:stringCopy];

                  [stringCopy appendString:@">"];
                  v94 = 1;
                }
              }

              else
              {
                v94 = 0;
                v20 = v101;
                v21 = v109;
              }

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v106 = v20;
              v110 = [v106 countByEnumeratingWithState:&v111 objects:v119 count:16];
              if (!v110)
              {
                goto LABEL_49;
              }

              v107 = *v112;
              while (1)
              {
                for (i = 0; i != v110; ++i)
                {
                  if (*v112 != v107)
                  {
                    objc_enumerationMutation(v106);
                  }

                  v41 = *(*(&v111 + 1) + 8 * i);
                  v42 = v21;
                  v43 = objc_opt_class();
                  if (isKindOfClass)
                  {
                    v44 = [v105 elementForValue:v41];

                    elementName4 = [v44 elementName];
                    v46 = [v105 typeForName:elementName4];

                    v42 = v44;
                  }

                  else
                  {
                    v46 = v43;
                  }

                  [stringCopy appendString:@"<"];
                  namespaceURI2 = [v42 namespaceURI];
                  elementName5 = [v42 elementName];
                  [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI2 elementName:elementName5 options:options appendingToString:stringCopy];

                  v49 = [POXSDefinitions definitionForType:v46];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v52 = stringCopy;
                      if (v41)
                      {
                        [stringCopy appendString:@">"];
                        v53 = [v49 stringFromValue:v41];
                        [stringCopy appendString:v53];

LABEL_38:
                        [stringCopy appendString:@"</"];
                        namespaceURI3 = [v42 namespaceURI];
                        elementName6 = [v42 elementName];
                        [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI3 elementName:elementName6 options:options appendingToString:stringCopy];

                        v52 = stringCopy;
                        v56 = @">";
                      }

                      else
                      {
                        v56 = @"/>";
                      }

                      [v52 appendString:v56];
                      goto LABEL_47;
                    }

LABEL_43:
                    [stringCopy appendString:@"/>"];
                    goto LABEL_47;
                  }

                  [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v41 options:options appendingToString:stringCopy];
                  elements = [v49 elements];
                  v51 = [elements count];

                  if (v51)
                  {
                    [stringCopy appendString:@">"];
                    [(POSOAPDocument *)self _XMLStringWithComplexType:v41 options:options appendingToString:stringCopy];
                    goto LABEL_38;
                  }

                  contentPropertyName = [v49 contentPropertyName];

                  if (!contentPropertyName)
                  {
                    goto LABEL_43;
                  }

                  v58 = [POXSDefinitions definitionForType:v46];
                  contentPropertyName2 = [v58 contentPropertyName];
                  v104 = v58;
                  v60 = [v58 typeForName:contentPropertyName2];
                  v61 = [v41 valueForKey:contentPropertyName2];
                  v62 = [POXSDefinitions definitionForType:v60];
                  v63 = [v62 stringFromValue:v61];
                  if (v63)
                  {
                    [stringCopy appendString:@">"];
                    [stringCopy appendString:v63];
                    [stringCopy appendString:@"</"];
                    namespaceURI4 = [v42 namespaceURI];
                    [v42 elementName];
                    v102 = contentPropertyName2;
                    v65 = v62;
                    v66 = v61;
                    v68 = v67 = options;
                    [(POSOAPDocument *)selfCopy _XMLQualifiedNameForNamespace:namespaceURI4 elementName:v68 options:v67 appendingToString:stringCopy];

                    options = v67;
                    v61 = v66;
                    v62 = v65;
                    contentPropertyName2 = v102;

                    self = selfCopy;
                    v69 = @">";
                  }

                  else
                  {
                    v69 = @"/>";
                  }

                  [stringCopy appendString:v69];

LABEL_47:
                  v21 = v109;
                }

                v110 = [v106 countByEnumeratingWithState:&v111 objects:v119 count:16];
                if (!v110)
                {
LABEL_49:

                  if (v94)
                  {
                    [stringCopy appendString:@"</"];
                    namespaceURI5 = [v21 namespaceURI];
                    elementName7 = [v21 elementName];
                    [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI5 elementName:elementName7 options:options appendingToString:stringCopy];

                    [stringCopy appendString:@">"];
                  }

                  v31 = v105;
                  typeCopy = v92;
                  goto LABEL_52;
                }
              }
            }

            objc_opt_class();
            v22 = v105;
            if (objc_opt_isKindOfClass())
            {
              [stringCopy appendString:@"<"];
              namespaceURI6 = [v109 namespaceURI];
              elementName8 = [v109 elementName];
              [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI6 elementName:elementName8 options:options appendingToString:stringCopy];

              [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v101 options:options appendingToString:stringCopy];
              elements2 = [v105 elements];
              v26 = [elements2 count];

              if (v26)
              {
                [stringCopy appendString:@">"];
                [(POSOAPDocument *)self _XMLStringWithComplexType:v101 options:options appendingToString:stringCopy];
                [stringCopy appendString:@"</"];
                namespaceURI7 = [v109 namespaceURI];
                elementName9 = [v109 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI7 elementName:elementName9 options:options appendingToString:stringCopy];

                v29 = stringCopy;
                v30 = @">";
              }

              else
              {
                contentPropertyName3 = [v105 contentPropertyName];

                if (contentPropertyName3)
                {
                  contentPropertyName4 = [v105 contentPropertyName];
                  v80 = [v105 typeForName:contentPropertyName4];
                  v81 = [v101 valueForKey:contentPropertyName4];
                  v82 = [POXSDefinitions definitionForType:v80];
                  v83 = [v82 stringFromValue:v81];
                  typeCopy = v92;
                  if (v83)
                  {
                    [stringCopy appendString:@">"];
                    [stringCopy appendString:v83];
                    [stringCopy appendString:@"</"];
                    namespaceURI8 = [v109 namespaceURI];
                    elementName10 = [v109 elementName];
                    [(POSOAPDocument *)selfCopy _XMLQualifiedNameForNamespace:namespaceURI8 elementName:elementName10 options:options appendingToString:stringCopy];

                    v22 = v105;
                    v86 = @">";
                  }

                  else
                  {
                    v86 = @"/>";
                  }

                  [stringCopy appendString:v86];

                  v31 = v22;
                  goto LABEL_52;
                }

                v29 = stringCopy;
                v30 = @"/>";
              }

              [v29 appendString:v30];
              v31 = v105;
              v17 = v96;
              typeCopy = v92;
              goto LABEL_54;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v105 elementForValue:v101];
              namespaceURI9 = [v32 namespaceURI];
              elementName11 = [v32 elementName];
              [stringCopy appendString:@"<"];
              [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI9 elementName:elementName11 options:options appendingToString:stringCopy];
              [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v101 options:options appendingToString:stringCopy];
              v31 = +[POXSDefinitions definitionForType:](POXSDefinitions, "definitionForType:", [v32 type]);

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                elements3 = [v31 elements];
                v36 = [elements3 count];

                if (v36)
                {
                  [stringCopy appendString:@">"];
                  v37 = selfCopy;
                  [(POSOAPDocument *)selfCopy _XMLStringWithComplexType:v101 options:options appendingToString:stringCopy];
                  goto LABEL_66;
                }
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v31 stringFromValue:v101], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v88 = v87;
                [stringCopy appendString:@">"];
                [stringCopy appendString:v88];

                v37 = selfCopy;
LABEL_66:
                [stringCopy appendString:@"</"];
                [(POSOAPDocument *)v37 _XMLQualifiedNameForNamespace:namespaceURI9 elementName:elementName11 options:options appendingToString:stringCopy];
                v89 = @">";
              }

              else
              {
                v89 = @"/>";
              }

              [stringCopy appendString:v89];

              v10 = v93;
            }

            else
            {
              v72 = [POXSDefinitions definitionForType:v16];
              v73 = [v72 stringFromValue:v101];
              if (v73)
              {
                [stringCopy appendString:@"<"];
                namespaceURI10 = [v109 namespaceURI];
                elementName12 = [v109 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI10 elementName:elementName12 options:options appendingToString:stringCopy];

                [stringCopy appendString:@">"];
                [stringCopy appendString:v73];
                [stringCopy appendString:@"</"];
                namespaceURI11 = [v109 namespaceURI];
                elementName13 = [v109 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:namespaceURI11 elementName:elementName13 options:options appendingToString:stringCopy];

                [stringCopy appendString:@">"];
              }

              v31 = v105;
LABEL_52:
              v10 = v93;
            }

            v17 = v96;
          }

LABEL_54:

          self = selfCopy;
        }

        v11 = v100 + 1;
      }

      while (v100 + 1 != v98);
      v90 = [obj countByEnumeratingWithState:&v115 objects:v120 count:16];
      v98 = v90;
    }

    while (v90);
  }

  v91 = *MEMORY[0x277D85DE8];
}

- (void)_XMLStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  v7 = stringCopy;
  v8 = stringCopy;
  if ((options & 1) == 0)
  {
    [stringCopy appendString:@"<?xml version=1.0 encoding=utf-8?>"];
    v7 = v8;
  }

  [(POSOAPDocument *)self _XMLStringWithComplexType:self options:options appendingToString:v7];
}

@end