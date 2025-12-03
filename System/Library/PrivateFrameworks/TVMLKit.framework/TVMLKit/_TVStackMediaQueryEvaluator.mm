@interface _TVStackMediaQueryEvaluator
- (BOOL)evaluteForMediaType:(id)type featureType:(id)featureType value:(id)value result:(BOOL *)result;
@end

@implementation _TVStackMediaQueryEvaluator

- (BOOL)evaluteForMediaType:(id)type featureType:(id)featureType value:(id)value result:(BOOL *)result
{
  v24 = *MEMORY[0x277D85DE8];
  featureTypeCopy = featureType;
  if (IsTemplateMediaType(type) && [featureTypeCopy isEqualToString:@"-tv-banner"])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    templateElement = [(TVMediaQueryEvaluator *)self templateElement];
    unfilteredChildren = [templateElement unfilteredChildren];

    v12 = [unfilteredChildren countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(unfilteredChildren);
          }

          tv_elementType = [*(*(&v19 + 1) + 8 * i) tv_elementType];
          if (tv_elementType != 4)
          {
            if (tv_elementType != 10)
            {
              *result = 1;
            }

            goto LABEL_15;
          }
        }

        v13 = [unfilteredChildren countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end