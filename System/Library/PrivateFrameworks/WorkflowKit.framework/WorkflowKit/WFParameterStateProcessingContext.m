@interface WFParameterStateProcessingContext
- (WFParameterStateProcessingContext)initWithVariableSource:(id)a3 parameter:(id)a4 isInputParameter:(BOOL)a5 environment:(int64_t)a6 contentAttributionTracker:(id)a7 widgetSizeClass:(id)a8;
- (void)addContentAttributionSet:(id)a3;
@end

@implementation WFParameterStateProcessingContext

- (void)addContentAttributionSet:(id)a3
{
  v4 = a3;
  v6 = [(WFParameterStateProcessingContext *)self contentAttributionTracker];
  v5 = [(WFParameterStateProcessingContext *)self parameter];
  [v6 addAttributionSet:v4 forParameter:v5];
}

- (WFParameterStateProcessingContext)initWithVariableSource:(id)a3 parameter:(id)a4 isInputParameter:(BOOL)a5 environment:(int64_t)a6 contentAttributionTracker:(id)a7 widgetSizeClass:(id)a8
{
  v29 = a3;
  v15 = a4;
  v16 = a7;
  v17 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFParameterStateProcessingContext.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFParameterStateProcessingContext.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"contentAttributionTracker"}];

LABEL_3:
  v30.receiver = self;
  v30.super_class = WFParameterStateProcessingContext;
  v18 = [(WFParameterStateProcessingContext *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_variableSource, a3);
    objc_storeStrong(&v19->_parameter, a4);
    v19->_isInputParameter = a5;
    v19->_environment = a6;
    objc_storeStrong(&v19->_contentAttributionTracker, a7);
    objc_storeStrong(&v19->_widgetSizeClass, a8);
    if ([v15 allowsMultipleValues])
    {
      v20 = [v15 isRangedSizeArray];
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (v17 && v20)
      {
        v22 = [v15 arraySizeRangeForWidgetFamily:v17];
        v21 = v23 + v22 - 1;
      }
    }

    else
    {
      v21 = 1;
    }

    v19->_maximumItemCount = v21;
    v24 = v19;
  }

  return v19;
}

@end