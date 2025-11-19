@interface POSOAPDocument
+ (id)definition;
- (id)XMLStringWithOptions:(unint64_t)a3;
- (void)_XMLAttributeStringWithPrefix:(id)a3 name:(id)a4 value:(id)a5 options:(unint64_t)a6 appendingToString:(id)a7;
- (void)_XMLAttributesStringWithComplexType:(id)a3 options:(unint64_t)a4 appendingToString:(id)a5;
- (void)_XMLQualifiedNameForNamespace:(id)a3 elementName:(id)a4 options:(unint64_t)a5 appendingToString:(id)a6;
- (void)_XMLStringWithComplexType:(id)a3 options:(unint64_t)a4 appendingToString:(id)a5;
- (void)_XMLStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation POSOAPDocument

+ (id)definition
{
  v2 = objc_opt_new();
  [v2 addElementWithName:@"Envelope" namespaceURI:@"http://www.w3.org/2003/05/soap-envelope" type:objc_opt_class()];

  return v2;
}

- (id)XMLStringWithOptions:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCAB68] string];
  [(POSOAPDocument *)self _XMLStringWithOptions:a3 appendingToString:v5];

  return v5;
}

- (void)_XMLQualifiedNameForNamespace:(id)a3 elementName:(id)a4 options:(unint64_t)a5 appendingToString:(id)a6
{
  v10 = a4;
  v8 = a6;
  v9 = [POXSNamespaces prefixForNamespaceURI:a3];
  if ([v9 length])
  {
    [v8 appendString:v9];
    [v8 appendString:@":"];
  }

  [v8 appendString:v10];
}

- (void)_XMLAttributeStringWithPrefix:(id)a3 name:(id)a4 value:(id)a5 options:(unint64_t)a6 appendingToString:(id)a7
{
  v13 = a3;
  v10 = a4;
  v11 = a7;
  v12 = a5;
  [v11 appendString:@" "];
  if ([v13 length])
  {
    [v11 appendString:v13];
    if (![v10 length])
    {
      goto LABEL_6;
    }

    [v11 appendString:@":"];
  }

  else if (![v10 length])
  {
    goto LABEL_6;
  }

  [v11 appendString:v10];
LABEL_6:
  [v11 appendString:@"="];
  [v11 appendString:v12];

  [v11 appendString:@""];
}

- (void)_XMLAttributesStringWithComplexType:(id)a3 options:(unint64_t)a4 appendingToString:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = a5;
  [POXSDefinitions definitionForType:objc_opt_class()];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v34 = v42 = 0u;
  obj = [v34 attributes];
  v7 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  v32 = v6;
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
        v12 = [v6 valueForKey:{v11, v29}];
        if (v12)
        {
          v13 = [v34 isSpecifiedKeyForAttributeName:v11];
          if (!v13 || ([v6 valueForKey:v13], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "BOOLValue"), v14, v15))
          {
            v16 = +[POXSDefinitions definitionForType:](POXSDefinitions, "definitionForType:", [v34 typeForName:v11]);
            v17 = [v34 namespaceForAttributeName:v11];
            v18 = [v16 stringFromValue:v12];
            if (v18)
            {
              v19 = [POXSNamespaces prefixForNamespaceURI:v17];
              [(POSOAPDocument *)self _XMLAttributeStringWithPrefix:v19 name:v11 value:v18 options:a4 appendingToString:v29];

              v6 = v32;
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
  v20 = [v34 namespaces];
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
  v22 = v29;
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
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v35 + 1) + 8 * j);
        v27 = [POXSNamespaces prefixForNamespaceURI:v26, v29];
        [(POSOAPDocument *)self _XMLAttributeStringWithPrefix:@"xmlns" name:v27 value:v26 options:a4 appendingToString:v22];
      }

      v23 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v23);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)_XMLStringWithComplexType:(id)a3 options:(unint64_t)a4 appendingToString:(id)a5
{
  v121 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
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
    v92 = v8;
    v93 = v10;
    v103 = self;
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
        v13 = [v12 elementName];
        v14 = [v8 valueForKey:v13];

        v101 = v14;
        if (v14)
        {
          v109 = v12;
          v15 = [v12 elementName];
          v16 = [v10 typeForName:v15];
          v105 = [POXSDefinitions definitionForType:v16];
          v99 = v15;
          v17 = [v10 isSpecifiedKeyForElementName:v15];
          if (v17 && ([v8 valueForKey:v17], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "BOOLValue"), v18, !v19))
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
                  [v9 appendString:@"<"];
                  v38 = [v109 namespaceURI];
                  v39 = [v109 elementName];
                  [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v38 elementName:v39 options:a4 appendingToString:v9];

                  [v9 appendString:@">"];
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

                    v45 = [v44 elementName];
                    v46 = [v105 typeForName:v45];

                    v42 = v44;
                  }

                  else
                  {
                    v46 = v43;
                  }

                  [v9 appendString:@"<"];
                  v47 = [v42 namespaceURI];
                  v48 = [v42 elementName];
                  [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v47 elementName:v48 options:a4 appendingToString:v9];

                  v49 = [POXSDefinitions definitionForType:v46];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v52 = v9;
                      if (v41)
                      {
                        [v9 appendString:@">"];
                        v53 = [v49 stringFromValue:v41];
                        [v9 appendString:v53];

LABEL_38:
                        [v9 appendString:@"</"];
                        v54 = [v42 namespaceURI];
                        v55 = [v42 elementName];
                        [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v54 elementName:v55 options:a4 appendingToString:v9];

                        v52 = v9;
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
                    [v9 appendString:@"/>"];
                    goto LABEL_47;
                  }

                  [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v41 options:a4 appendingToString:v9];
                  v50 = [v49 elements];
                  v51 = [v50 count];

                  if (v51)
                  {
                    [v9 appendString:@">"];
                    [(POSOAPDocument *)self _XMLStringWithComplexType:v41 options:a4 appendingToString:v9];
                    goto LABEL_38;
                  }

                  v57 = [v49 contentPropertyName];

                  if (!v57)
                  {
                    goto LABEL_43;
                  }

                  v58 = [POXSDefinitions definitionForType:v46];
                  v59 = [v58 contentPropertyName];
                  v104 = v58;
                  v60 = [v58 typeForName:v59];
                  v61 = [v41 valueForKey:v59];
                  v62 = [POXSDefinitions definitionForType:v60];
                  v63 = [v62 stringFromValue:v61];
                  if (v63)
                  {
                    [v9 appendString:@">"];
                    [v9 appendString:v63];
                    [v9 appendString:@"</"];
                    v64 = [v42 namespaceURI];
                    [v42 elementName];
                    v102 = v59;
                    v65 = v62;
                    v66 = v61;
                    v68 = v67 = a4;
                    [(POSOAPDocument *)v103 _XMLQualifiedNameForNamespace:v64 elementName:v68 options:v67 appendingToString:v9];

                    a4 = v67;
                    v61 = v66;
                    v62 = v65;
                    v59 = v102;

                    self = v103;
                    v69 = @">";
                  }

                  else
                  {
                    v69 = @"/>";
                  }

                  [v9 appendString:v69];

LABEL_47:
                  v21 = v109;
                }

                v110 = [v106 countByEnumeratingWithState:&v111 objects:v119 count:16];
                if (!v110)
                {
LABEL_49:

                  if (v94)
                  {
                    [v9 appendString:@"</"];
                    v70 = [v21 namespaceURI];
                    v71 = [v21 elementName];
                    [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v70 elementName:v71 options:a4 appendingToString:v9];

                    [v9 appendString:@">"];
                  }

                  v31 = v105;
                  v8 = v92;
                  goto LABEL_52;
                }
              }
            }

            objc_opt_class();
            v22 = v105;
            if (objc_opt_isKindOfClass())
            {
              [v9 appendString:@"<"];
              v23 = [v109 namespaceURI];
              v24 = [v109 elementName];
              [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v23 elementName:v24 options:a4 appendingToString:v9];

              [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v101 options:a4 appendingToString:v9];
              v25 = [v105 elements];
              v26 = [v25 count];

              if (v26)
              {
                [v9 appendString:@">"];
                [(POSOAPDocument *)self _XMLStringWithComplexType:v101 options:a4 appendingToString:v9];
                [v9 appendString:@"</"];
                v27 = [v109 namespaceURI];
                v28 = [v109 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v27 elementName:v28 options:a4 appendingToString:v9];

                v29 = v9;
                v30 = @">";
              }

              else
              {
                v78 = [v105 contentPropertyName];

                if (v78)
                {
                  v79 = [v105 contentPropertyName];
                  v80 = [v105 typeForName:v79];
                  v81 = [v101 valueForKey:v79];
                  v82 = [POXSDefinitions definitionForType:v80];
                  v83 = [v82 stringFromValue:v81];
                  v8 = v92;
                  if (v83)
                  {
                    [v9 appendString:@">"];
                    [v9 appendString:v83];
                    [v9 appendString:@"</"];
                    v84 = [v109 namespaceURI];
                    v85 = [v109 elementName];
                    [(POSOAPDocument *)v103 _XMLQualifiedNameForNamespace:v84 elementName:v85 options:a4 appendingToString:v9];

                    v22 = v105;
                    v86 = @">";
                  }

                  else
                  {
                    v86 = @"/>";
                  }

                  [v9 appendString:v86];

                  v31 = v22;
                  goto LABEL_52;
                }

                v29 = v9;
                v30 = @"/>";
              }

              [v29 appendString:v30];
              v31 = v105;
              v17 = v96;
              v8 = v92;
              goto LABEL_54;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [v105 elementForValue:v101];
              v33 = [v32 namespaceURI];
              v34 = [v32 elementName];
              [v9 appendString:@"<"];
              [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v33 elementName:v34 options:a4 appendingToString:v9];
              [(POSOAPDocument *)self _XMLAttributesStringWithComplexType:v101 options:a4 appendingToString:v9];
              v31 = +[POXSDefinitions definitionForType:](POXSDefinitions, "definitionForType:", [v32 type]);

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = [v31 elements];
                v36 = [v35 count];

                if (v36)
                {
                  [v9 appendString:@">"];
                  v37 = v103;
                  [(POSOAPDocument *)v103 _XMLStringWithComplexType:v101 options:a4 appendingToString:v9];
                  goto LABEL_66;
                }
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ([v31 stringFromValue:v101], (v87 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v88 = v87;
                [v9 appendString:@">"];
                [v9 appendString:v88];

                v37 = v103;
LABEL_66:
                [v9 appendString:@"</"];
                [(POSOAPDocument *)v37 _XMLQualifiedNameForNamespace:v33 elementName:v34 options:a4 appendingToString:v9];
                v89 = @">";
              }

              else
              {
                v89 = @"/>";
              }

              [v9 appendString:v89];

              v10 = v93;
            }

            else
            {
              v72 = [POXSDefinitions definitionForType:v16];
              v73 = [v72 stringFromValue:v101];
              if (v73)
              {
                [v9 appendString:@"<"];
                v74 = [v109 namespaceURI];
                v75 = [v109 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v74 elementName:v75 options:a4 appendingToString:v9];

                [v9 appendString:@">"];
                [v9 appendString:v73];
                [v9 appendString:@"</"];
                v76 = [v109 namespaceURI];
                v77 = [v109 elementName];
                [(POSOAPDocument *)self _XMLQualifiedNameForNamespace:v76 elementName:v77 options:a4 appendingToString:v9];

                [v9 appendString:@">"];
              }

              v31 = v105;
LABEL_52:
              v10 = v93;
            }

            v17 = v96;
          }

LABEL_54:

          self = v103;
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

- (void)_XMLStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if ((a3 & 1) == 0)
  {
    [v6 appendString:@"<?xml version=1.0 encoding=utf-8?>"];
    v7 = v8;
  }

  [(POSOAPDocument *)self _XMLStringWithComplexType:self options:a3 appendingToString:v7];
}

@end