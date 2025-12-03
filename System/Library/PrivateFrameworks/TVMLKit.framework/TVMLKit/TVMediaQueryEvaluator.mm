@interface TVMediaQueryEvaluator
+ (id)_mobileGestaltStringForKey:(__CFString *)key;
+ (id)_productType;
+ (id)evaluatorForTemplateElement:(id)element inWindow:(id)window;
+ (id)evaluatorForTemplateElement:(id)element inWindow:(id)window traitEnvironment:(id)environment;
- (BOOL)_evaluateAllMediaFeatureType:(id)type withValue:(id)value;
- (BOOL)_evaluateDeviceFeatureType:(id)type withValue:(id)value;
- (BOOL)_evaluateTemplateFeatureType:(id)type withValue:(id)value;
- (BOOL)evaluateMediaQuery:(id)query;
- (TVMediaQueryEvaluator)initWithTemplateElement:(id)element inWindow:(id)window traitEnvironment:(id)environment;
- (TVMediaQueryEvaluatorDelegate)delegate;
- (UITraitEnvironment)traitEnvironment;
@end

@implementation TVMediaQueryEvaluator

+ (id)evaluatorForTemplateElement:(id)element inWindow:(id)window
{
  windowCopy = window;
  elementCopy = element;
  v7 = [objc_opt_class() evaluatorForTemplateElement:elementCopy inWindow:windowCopy traitEnvironment:0];

  return v7;
}

+ (id)evaluatorForTemplateElement:(id)element inWindow:(id)window traitEnvironment:(id)environment
{
  v8 = evaluatorForTemplateElement_inWindow_traitEnvironment__onceToken;
  environmentCopy = environment;
  windowCopy = window;
  elementCopy = element;
  if (v8 != -1)
  {
    +[TVMediaQueryEvaluator evaluatorForTemplateElement:inWindow:traitEnvironment:];
  }

  v12 = evaluatorForTemplateElement_inWindow_traitEnvironment__evaluatorClassByTemplate;
  elementName = [elementCopy elementName];
  v14 = [v12 objectForKey:elementName];
  if (v14)
  {
    self = v14;
  }

  v15 = [[self alloc] initWithTemplateElement:elementCopy inWindow:windowCopy traitEnvironment:environmentCopy];

  return v15;
}

void __79__TVMediaQueryEvaluator_evaluatorForTemplateElement_inWindow_traitEnvironment___block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v2 = @"stackTemplate";
  v3[0] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = evaluatorForTemplateElement_inWindow_traitEnvironment__evaluatorClassByTemplate;
  evaluatorForTemplateElement_inWindow_traitEnvironment__evaluatorClassByTemplate = v0;
}

- (TVMediaQueryEvaluator)initWithTemplateElement:(id)element inWindow:(id)window traitEnvironment:(id)environment
{
  elementCopy = element;
  windowCopy = window;
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = TVMediaQueryEvaluator;
  v12 = [(TVMediaQueryEvaluator *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_templateElement, element);
    if (environmentCopy)
    {
      v14 = environmentCopy;
    }

    else
    {
      v14 = windowCopy;
    }

    objc_storeWeak(&v13->_traitEnvironment, v14);
    if (windowCopy)
    {
      v15 = [[_TVWindowSizeAdaptor alloc] initWithWindow:windowCopy];
      windowSizeAdaptor = v13->_windowSizeAdaptor;
      v13->_windowSizeAdaptor = v15;
    }

    *&v13->_implFlags = *&v13->_implFlags & 0xFE | objc_opt_respondsToSelector() & 1;
  }

  return v13;
}

- (BOOL)evaluateMediaQuery:(id)query
{
  queryCopy = query;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  mediaType = [queryCopy mediaType];
  if (IsTemplateMediaType(mediaType))
  {
    templateElement = [(TVMediaQueryEvaluator *)self templateElement];
    *(v22 + 24) = templateElement != 0;

    v7 = v20;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v8 = __44__TVMediaQueryEvaluator_evaluateMediaQuery___block_invoke;
  }

  else if ([mediaType isEqualToString:@"-tv-device"])
  {
    *(v22 + 24) = 1;
    v7 = v19;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v8 = __44__TVMediaQueryEvaluator_evaluateMediaQuery___block_invoke_2;
  }

  else
  {
    if (![mediaType isEqualToString:*MEMORY[0x277D1AF70]])
    {
      v9 = 0;
      goto LABEL_8;
    }

    *(v22 + 24) = 1;
    v7 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v8 = __44__TVMediaQueryEvaluator_evaluateMediaQuery___block_invoke_3;
  }

  v7[2] = v8;
  v7[3] = &unk_279D6FFB0;
  v7[4] = self;
  v9 = MEMORY[0x26D6AFBB0]();
LABEL_8:
  featureValues = [queryCopy featureValues];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__TVMediaQueryEvaluator_evaluateMediaQuery___block_invoke_4;
  v14[3] = &unk_279D6FFD8;
  v14[4] = self;
  v11 = mediaType;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v17 = &v21;
  [featureValues enumerateKeysAndObjectsUsingBlock:v14];

  LOBYTE(featureValues) = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return featureValues;
}

uint64_t __44__TVMediaQueryEvaluator_evaluateMediaQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _evaluateTemplateFeatureType:v5 withValue:v6])
  {
    v7 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) _evaluateAllMediaFeatureType:v5 withValue:v6];
  }

  return v7;
}

void __44__TVMediaQueryEvaluator_evaluateMediaQuery___block_invoke_4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v15 = 0;
  v9 = [*(a1 + 32) delegate];
  if (!v9 || (v10 = v9, [*(a1 + 32) delegate], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "evaluator:evaluteForMediaType:featureType:value:result:", *(a1 + 32), *(a1 + 40), v7, v8, &v15), v11, v10, (v12 & 1) == 0))
  {
    v13 = *(a1 + 32);
    if ((v13[16] & 1) == 0 || ([v13 evaluteForMediaType:*(a1 + 40) featureType:v7 value:v8 result:&v15] & 1) == 0)
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        v15 = (*(v14 + 16))(v14, v7, v8);
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 1;
  }
}

+ (id)_productType
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TVMediaQueryEvaluator__productType__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_productType_onceToken != -1)
  {
    dispatch_once(&_productType_onceToken, block);
  }

  v2 = _productType_productType;

  return v2;
}

uint64_t __37__TVMediaQueryEvaluator__productType__block_invoke()
{
  v0 = [objc_opt_class() _mobileGestaltStringForKey:@"ProductType"];
  v1 = _productType_productType;
  _productType_productType = v0;

  v2 = [_productType_productType stringByReplacingOccurrencesOfString:@" withString:{", @"-"}];
  v3 = _productType_productType;
  _productType_productType = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

- (BOOL)_evaluateDeviceFeatureType:(id)type withValue:(id)value
{
  valueCopy = value;
  if ([type isEqualToString:@"-tv-product-type"])
  {
    _productType = [objc_opt_class() _productType];
    v7 = [valueCopy isEqualToString:_productType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_evaluateTemplateFeatureType:(id)type withValue:(id)value
{
  v107 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  valueCopy = value;
  if (([typeCopy isEqualToString:@"-tv-uber"] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"-tv-banner") & 1) != 0 || objc_msgSend(typeCopy, "isEqualToString:", @"-tv-hero-img"))
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    templateElement = [(TVMediaQueryEvaluator *)self templateElement];
    unfilteredChildren = [templateElement unfilteredChildren];

    v10 = [unfilteredChildren countByEnumeratingWithState:&v95 objects:v106 count:16];
    if (v10)
    {
      v11 = *v96;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v96 != v11)
          {
            objc_enumerationMutation(unfilteredChildren);
          }

          v13 = *(*(&v95 + 1) + 8 * i);
          if ([v13 tv_elementType] == 12)
          {
            v10 = v13;
            goto LABEL_14;
          }
        }

        v10 = [unfilteredChildren countByEnumeratingWithState:&v95 objects:v106 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    unfilteredChildren2 = [v10 unfilteredChildren];
    v15 = [unfilteredChildren2 countByEnumeratingWithState:&v91 objects:v105 count:16];
    if (v15)
    {
      v16 = *v92;
      while (2)
      {
        for (j = 0; j != v15; j = j + 1)
        {
          if (*v92 != v16)
          {
            objc_enumerationMutation(unfilteredChildren2);
          }

          v18 = *(*(&v91 + 1) + 8 * j);
          if ([v18 tv_elementType] == 16 && objc_msgSend(v18, "tv_imageType") == 3)
          {
            v15 = v18;
            goto LABEL_25;
          }
        }

        v15 = [unfilteredChildren2 countByEnumeratingWithState:&v91 objects:v105 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_25:

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    unfilteredChildren3 = [v10 unfilteredChildren];
    v20 = [unfilteredChildren3 countByEnumeratingWithState:&v87 objects:v104 count:16];
    selfCopy = self;
    if (v20)
    {
      v21 = v15;
      v22 = *v88;
      while (2)
      {
        for (k = 0; k != v20; k = k + 1)
        {
          if (*v88 != v22)
          {
            objc_enumerationMutation(unfilteredChildren3);
          }

          v24 = *(*(&v87 + 1) + 8 * k);
          if ([v24 tv_elementType] == 4)
          {
            v20 = v24;
            goto LABEL_35;
          }
        }

        v20 = [unfilteredChildren3 countByEnumeratingWithState:&v87 objects:v104 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }

LABEL_35:
      v15 = v21;
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    unfilteredChildren4 = [v20 unfilteredChildren];
    v26 = [unfilteredChildren4 countByEnumeratingWithState:&v83 objects:v103 count:16];
    if (v26)
    {
      v27 = *v84;
      while (2)
      {
        for (m = 0; m != v26; m = m + 1)
        {
          if (*v84 != v27)
          {
            objc_enumerationMutation(unfilteredChildren4);
          }

          v29 = *(*(&v83 + 1) + 8 * m);
          if ([v29 tv_elementType] == 16 && !objc_msgSend(v29, "tv_imageType"))
          {
            v26 = v29;
            goto LABEL_47;
          }
        }

        v26 = [unfilteredChildren4 countByEnumeratingWithState:&v83 objects:v103 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }
    }

LABEL_47:

    if ([typeCopy isEqualToString:@"-tv-uber"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v26)
        {
          goto LABEL_103;
        }

        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        templateElement2 = [(TVMediaQueryEvaluator *)selfCopy templateElement];
        unfilteredChildren5 = [templateElement2 unfilteredChildren];

        v32 = [unfilteredChildren5 countByEnumeratingWithState:&v79 objects:v102 count:16];
        v65 = valueCopy;
        if (v32)
        {
          v33 = v32;
          v64 = v15;
          v34 = *v80;
          while (2)
          {
            for (n = 0; n != v33; ++n)
            {
              if (*v80 != v34)
              {
                objc_enumerationMutation(unfilteredChildren5);
              }

              v36 = *(*(&v79 + 1) + 8 * n);
              if ([v36 tv_elementType] == 4)
              {
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                unfilteredChildren6 = [v36 unfilteredChildren];
                v37 = [unfilteredChildren6 countByEnumeratingWithState:&v75 objects:v101 count:16];
                if (v37)
                {
                  v45 = *v76;
                  while (2)
                  {
                    for (ii = 0; ii != v37; ii = ii + 1)
                    {
                      if (*v76 != v45)
                      {
                        objc_enumerationMutation(unfilteredChildren6);
                      }

                      v47 = *(*(&v75 + 1) + 8 * ii);
                      if ([v47 tv_elementType] == 16 && !objc_msgSend(v47, "tv_imageType"))
                      {
                        v37 = v47;
                        goto LABEL_100;
                      }
                    }

                    v37 = [unfilteredChildren6 countByEnumeratingWithState:&v75 objects:v101 count:16];
                    if (v37)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_100:

                goto LABEL_101;
              }
            }

            v33 = [unfilteredChildren5 countByEnumeratingWithState:&v79 objects:v102 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }

          v37 = 0;
LABEL_101:
          v15 = v64;
        }

        else
        {
          v37 = 0;
        }

        style = [v37 style];
        tv_imageTreatment = [style tv_imageTreatment];
        v57 = [tv_imageTreatment isEqualToString:@"blurOverlay"];

        valueCopy = v65;
        if (v57)
        {
LABEL_103:
          templateElement3 = [(TVMediaQueryEvaluator *)selfCopy templateElement];
          elementName = [templateElement3 elementName];
          v60 = [elementName isEqualToString:@"compilationTemplate"];

          if (v60)
          {
            attributes = [v10 attributes];
            v62 = [attributes objectForKeyedSubscript:@"floating"];

            if ([v62 length])
            {
              LOBYTE(v38) = [v62 BOOLValue];
            }

            else
            {
              LOBYTE(v38) = 1;
            }
          }

          else
          {
            LOBYTE(v38) = 1;
          }

          goto LABEL_110;
        }

        goto LABEL_106;
      }
    }

    if ([typeCopy isEqualToString:@"-tv-banner"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      LOBYTE(v38) = v10 != 0;
    }

    else
    {
      if (![typeCopy isEqualToString:@"-tv-hero-img"])
      {
LABEL_106:
        LOBYTE(v38) = 0;
        goto LABEL_110;
      }

      objc_opt_class();
      v38 = (v15 != 0) & objc_opt_isKindOfClass();
    }

LABEL_110:

LABEL_111:
    goto LABEL_112;
  }

  if ([typeCopy isEqualToString:@"-tv-bg-uber"])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    templateElement4 = [(TVMediaQueryEvaluator *)self templateElement];
    unfilteredChildren7 = [templateElement4 unfilteredChildren];

    v10 = [unfilteredChildren7 countByEnumeratingWithState:&v71 objects:v100 count:16];
    if (v10)
    {
      v41 = *v72;
      while (2)
      {
        for (jj = 0; jj != v10; jj = jj + 1)
        {
          if (*v72 != v41)
          {
            objc_enumerationMutation(unfilteredChildren7);
          }

          v43 = *(*(&v71 + 1) + 8 * jj);
          if ([v43 tv_elementType] == 4)
          {
            v10 = v43;
            goto LABEL_86;
          }
        }

        v10 = [unfilteredChildren7 countByEnumeratingWithState:&v71 objects:v100 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_86:

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    unfilteredChildren8 = [v10 unfilteredChildren];
    v49 = [unfilteredChildren8 countByEnumeratingWithState:&v67 objects:v99 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v68;
      while (2)
      {
        for (kk = 0; kk != v50; ++kk)
        {
          if (*v68 != v51)
          {
            objc_enumerationMutation(unfilteredChildren8);
          }

          v53 = *(*(&v67 + 1) + 8 * kk);
          if ([v53 tv_elementType] == 16 && !objc_msgSend(v53, "tv_imageType"))
          {
            v54 = v53 != 0;
            goto LABEL_97;
          }
        }

        v50 = [unfilteredChildren8 countByEnumeratingWithState:&v67 objects:v99 count:16];
        if (v50)
        {
          continue;
        }

        break;
      }
    }

    v54 = 0;
LABEL_97:

    objc_opt_class();
    v38 = v54 & objc_opt_isKindOfClass();
    goto LABEL_111;
  }

  LOBYTE(v38) = 0;
LABEL_112:

  return v38;
}

- (BOOL)_evaluateAllMediaFeatureType:(id)type withValue:(id)value
{
  typeCopy = type;
  valueCopy = value;
  null = [MEMORY[0x277CBEB68] null];
  if (null != valueCopy && [valueCopy length] || (objc_msgSend(typeCopy, "isEqualToString:", @"ax-text") & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", @"small") & 1) != 0)
  {
  }

  else
  {
    v20 = [typeCopy isEqualToString:@"large"];

    if ((v20 & 1) == 0)
    {
      v21 = 0;
      goto LABEL_109;
    }
  }

  if (_evaluateAllMediaFeatureType_withValue__onceToken != -1)
  {
    [TVMediaQueryEvaluator _evaluateAllMediaFeatureType:withValue:];
  }

  v9 = [_evaluateAllMediaFeatureType_withValue__sFeatureLookup objectForKeyedSubscript:typeCopy];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  traitEnvironment = [(TVMediaQueryEvaluator *)self traitEnvironment];
  traitCollection = [traitEnvironment traitCollection];

  [(_TVWindowSizeAdaptor *)self->_windowSizeAdaptor adjustedWindowSize];
  v14 = v13;
  v16 = v15;
  switch(unsignedIntegerValue)
  {
    case 0:
      templateElement = [(TVMediaQueryEvaluator *)self templateElement];
      if (templateElement)
      {
        templateElement2 = [(TVMediaQueryEvaluator *)self templateElement];
        userInterfaceStyle = [TVMLUtilities interfaceStyleForTemplateElement:templateElement2];
      }

      else
      {
        userInterfaceStyle = [traitCollection userInterfaceStyle];
      }

      v68 = @"dark";
      if (userInterfaceStyle != 2)
      {
        v68 = 0;
      }

      if (userInterfaceStyle == 1)
      {
        v24 = @"light";
      }

      else
      {
        v24 = v68;
      }

      goto LABEL_95;
    case 1:
      integerValue = [valueCopy integerValue];
      [traitCollection displayScale];
      v33 = integerValue == v50;
      goto LABEL_33;
    case 2:
      integerValue2 = [valueCopy integerValue];
      [traitCollection displayScale];
      v21 = integerValue2 <= v43;
      goto LABEL_108;
    case 3:
      integerValue3 = [valueCopy integerValue];
      [traitCollection displayScale];
      v47 = integerValue3 < v46;
      goto LABEL_54;
    case 4:
      [valueCopy floatValue];
      v33 = v14 == v32;
      goto LABEL_33;
    case 5:
      [valueCopy floatValue];
      v47 = v14 < v52;
      goto LABEL_54;
    case 6:
      [valueCopy floatValue];
      v36 = v14 > v58;
      goto LABEL_47;
    case 7:
      [valueCopy floatValue];
      v33 = v16 == v48;
LABEL_33:
      v21 = v33;
      goto LABEL_108;
    case 8:
      [valueCopy floatValue];
      v47 = v16 < v61;
LABEL_54:
      v21 = !v47;
      goto LABEL_108;
    case 9:
      [valueCopy floatValue];
      v36 = v16 > v35;
LABEL_47:
      v21 = !v36;
      goto LABEL_108;
    case 10:
      [valueCopy floatValue];
      v56 = v60;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      Width = CGRectGetWidth(v79);
      goto LABEL_52;
    case 11:
      [valueCopy floatValue];
      v30 = v29;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v31 = CGRectGetWidth(v75);
      goto LABEL_29;
    case 12:
      [valueCopy floatValue];
      v26 = v34;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      Height = CGRectGetWidth(v76);
      goto LABEL_19;
    case 13:
      [valueCopy floatValue];
      v56 = v55;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      Width = CGRectGetHeight(v78);
LABEL_52:
      v21 = Width == v56;
      goto LABEL_107;
    case 14:
      [valueCopy floatValue];
      v26 = v25;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      Height = CGRectGetHeight(v74);
LABEL_19:
      v21 = Height >= v26;
      goto LABEL_107;
    case 15:
      [valueCopy floatValue];
      v30 = v44;
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v31 = CGRectGetHeight(v77);
LABEL_29:
      v21 = v31 <= v30;
      goto LABEL_107;
    case 16:
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if (userInterfaceIdiom > 2)
      {
        v24 = 0;
      }

      else
      {
        v24 = off_279D6FFF8[userInterfaceIdiom];
      }

      goto LABEL_95;
    case 17:
      mainScreen = [MEMORY[0x277D75418] currentDevice];
      systemVersion = [mainScreen systemVersion];
      v39 = [systemVersion compare:valueCopy options:64] == 0;
      goto LABEL_37;
    case 18:
      mainScreen = [MEMORY[0x277D75418] currentDevice];
      systemVersion = [mainScreen systemVersion];
      v59 = [systemVersion compare:valueCopy options:64] == -1;
      goto LABEL_60;
    case 19:
      mainScreen = [MEMORY[0x277D75418] currentDevice];
      systemVersion = [mainScreen systemVersion];
      v59 = [systemVersion compare:valueCopy options:64] == 1;
LABEL_60:
      v21 = !v59;
      goto LABEL_106;
    case 20:
      mainScreen = [valueCopy lowercaseString];
      v51 = [TVMLUtilities _isOSFeatureEnabled:mainScreen];
      goto LABEL_97;
    case 21:
      templateElement3 = [(TVMediaQueryEvaluator *)self templateElement];
      v54 = [TVMLUtilities semanticContentAttributeForTemplateElement:templateElement3];

      v24 = @"ltr";
      if (v54 != 3)
      {
        if (v54 == 4)
        {
          v24 = @"rtl";
        }

        else
        {
          userInterfaceLayoutDirection = [*MEMORY[0x277D76620] userInterfaceLayoutDirection];
          v70 = @"rtl";
          if (userInterfaceLayoutDirection != 1)
          {
            v70 = 0;
          }

          if (userInterfaceLayoutDirection)
          {
            v24 = v70;
          }
        }
      }

LABEL_95:
      mainScreen = [valueCopy lowercaseString];
      v41 = v24;
      goto LABEL_96;
    case 22:
      if ([traitCollection horizontalSizeClass] == 1)
      {
        goto LABEL_64;
      }

      horizontalSizeClass = [traitCollection horizontalSizeClass];
      goto LABEL_80;
    case 23:
      if ([traitCollection verticalSizeClass] == 1)
      {
LABEL_64:
        mainScreen = [valueCopy lowercaseString];
        v41 = @"compact";
        goto LABEL_96;
      }

      horizontalSizeClass = [traitCollection verticalSizeClass];
LABEL_80:
      if (horizontalSizeClass != 2)
      {
        goto LABEL_82;
      }

      mainScreen = [valueCopy lowercaseString];
      v41 = @"regular";
      goto LABEL_96;
    case 24:
      interfaceOrientation = [*MEMORY[0x277D76620] interfaceOrientation];
      if ((interfaceOrientation - 1) > 1)
      {
        if ((interfaceOrientation - 3) > 1)
        {
LABEL_82:
          v21 = 0;
          goto LABEL_108;
        }

        mainScreen = [valueCopy lowercaseString];
        v41 = @"landscape";
      }

      else
      {
        mainScreen = [valueCopy lowercaseString];
        v41 = @"portrait";
      }

LABEL_96:
      v51 = [(__CFString *)v41 isEqualToString:mainScreen];
LABEL_97:
      v21 = v51;
      goto LABEL_107;
    case 25:
      mainScreen = [valueCopy lowercaseString];
      if ([@"phone" isEqual:mainScreen])
      {
        systemVersion = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom2 = [systemVersion userInterfaceIdiom];
        v39 = v14 <= 639.0 || userInterfaceIdiom2 == 0;
LABEL_37:
        v21 = v39;
      }

      else if ([@"pad" isEqual:mainScreen])
      {
        systemVersion = [MEMORY[0x277D75418] currentDevice];
        userInterfaceIdiom3 = [systemVersion userInterfaceIdiom];
        v67 = v14 > 639.0;
        if (v14 == 1366.0)
        {
          v67 = 0;
        }

        if (userInterfaceIdiom3 != 1)
        {
          v67 = 0;
        }

        v21 = v16 != 1366.0 && v67;
      }

      else
      {
        if (![@"pad-l" isEqual:mainScreen])
        {
          goto LABEL_103;
        }

        interfaceOrientation2 = [*MEMORY[0x277D76620] interfaceOrientation];
        systemVersion = [MEMORY[0x277D75418] currentDevice];
        if ([systemVersion userInterfaceIdiom] == 1)
        {
          if ((interfaceOrientation2 - 3) <= 1 && v14 == 1366.0)
          {
            v21 = 1;
          }

          else
          {
            v73 = v16 == 1366.0;
            if (v14 != 1024.0)
            {
              v73 = 0;
            }

            v21 = (interfaceOrientation2 - 1) < 2 && v73;
          }
        }

        else
        {
          v21 = 0;
        }
      }

      goto LABEL_106;
    case 26:
      mainScreen = [valueCopy lowercaseString];
      if ([@"small" isEqual:mainScreen])
      {
        systemVersion = [MEMORY[0x277D75128] sharedApplication];
        preferredContentSizeCategory = [systemVersion preferredContentSizeCategory];
        if (UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76818]) == NSOrderedDescending)
        {
          mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
          preferredContentSizeCategory2 = [mEMORY[0x277D75128] preferredContentSizeCategory];
          v21 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory2, *MEMORY[0x277D767F8]) == NSOrderedAscending;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        if (![@"large" isEqual:mainScreen])
        {
LABEL_103:
          v21 = 0;
          goto LABEL_107;
        }

        systemVersion = [MEMORY[0x277D75128] sharedApplication];
        preferredContentSizeCategory = [systemVersion preferredContentSizeCategory];
        v21 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x277D76800]) == NSOrderedDescending;
      }

LABEL_106:
LABEL_107:

LABEL_108:
      break;
    default:
      goto LABEL_82;
  }

LABEL_109:

  return v21;
}

void __64__TVMediaQueryEvaluator__evaluateAllMediaFeatureType_withValue___block_invoke()
{
  v3[29] = *MEMORY[0x277D85DE8];
  v2[0] = @"appearance";
  v2[1] = @"-tv-theme";
  v3[0] = &unk_287E480D8;
  v3[1] = &unk_287E480D8;
  v2[2] = @"tv-theme";
  v2[3] = @"pixel-ratio";
  v3[2] = &unk_287E480D8;
  v3[3] = &unk_287E480F0;
  v2[4] = @"min-pixel-ratio";
  v2[5] = @"max-pixel-ratio";
  v3[4] = &unk_287E48108;
  v3[5] = &unk_287E48120;
  v2[6] = @"width";
  v2[7] = @"min-width";
  v3[6] = &unk_287E48138;
  v3[7] = &unk_287E48150;
  v2[8] = @"max-width";
  v2[9] = @"height";
  v3[8] = &unk_287E48168;
  v3[9] = &unk_287E48180;
  v2[10] = @"min-height";
  v2[11] = @"max-height";
  v3[10] = &unk_287E48198;
  v3[11] = &unk_287E481B0;
  v2[12] = @"device-width";
  v2[13] = @"min-device-width";
  v3[12] = &unk_287E481C8;
  v3[13] = &unk_287E481E0;
  v2[14] = @"max-device-width";
  v2[15] = @"device-height";
  v3[14] = &unk_287E481F8;
  v3[15] = &unk_287E48210;
  v2[16] = @"min-device-height";
  v2[17] = @"max-device-height";
  v3[16] = &unk_287E48228;
  v3[17] = &unk_287E48240;
  v2[18] = @"interface-idiom";
  v2[19] = @"tv-os-version";
  v3[18] = &unk_287E48258;
  v3[19] = &unk_287E48270;
  v2[20] = @"tv-min-os-version";
  v2[21] = @"tv-max-os-version";
  v3[20] = &unk_287E48288;
  v3[21] = &unk_287E482A0;
  v2[22] = @"tv-os-feature";
  v2[23] = @"layout-direction";
  v3[22] = &unk_287E482B8;
  v3[23] = &unk_287E482D0;
  v2[24] = @"size-horizontal";
  v2[25] = @"size-vertical";
  v3[24] = &unk_287E482E8;
  v3[25] = &unk_287E48300;
  v2[26] = @"orientation";
  v2[27] = @"layout";
  v3[26] = &unk_287E48318;
  v3[27] = &unk_287E48330;
  v2[28] = @"ax-text";
  v3[28] = &unk_287E48348;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:29];
  v1 = _evaluateAllMediaFeatureType_withValue__sFeatureLookup;
  _evaluateAllMediaFeatureType_withValue__sFeatureLookup = v0;
}

+ (id)_mobileGestaltStringForKey:(__CFString *)key
{
  v3 = MGCopyAnswer();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (UITraitEnvironment)traitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_traitEnvironment);

  return WeakRetained;
}

- (TVMediaQueryEvaluatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end