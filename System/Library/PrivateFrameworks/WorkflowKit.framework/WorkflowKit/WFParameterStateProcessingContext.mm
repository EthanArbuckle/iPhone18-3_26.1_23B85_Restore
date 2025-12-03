@interface WFParameterStateProcessingContext
- (WFParameterStateProcessingContext)initWithVariableSource:(id)source parameter:(id)parameter isInputParameter:(BOOL)inputParameter environment:(int64_t)environment contentAttributionTracker:(id)tracker widgetSizeClass:(id)class;
- (void)addContentAttributionSet:(id)set;
@end

@implementation WFParameterStateProcessingContext

- (void)addContentAttributionSet:(id)set
{
  setCopy = set;
  contentAttributionTracker = [(WFParameterStateProcessingContext *)self contentAttributionTracker];
  parameter = [(WFParameterStateProcessingContext *)self parameter];
  [contentAttributionTracker addAttributionSet:setCopy forParameter:parameter];
}

- (WFParameterStateProcessingContext)initWithVariableSource:(id)source parameter:(id)parameter isInputParameter:(BOOL)inputParameter environment:(int64_t)environment contentAttributionTracker:(id)tracker widgetSizeClass:(id)class
{
  sourceCopy = source;
  parameterCopy = parameter;
  trackerCopy = tracker;
  classCopy = class;
  if (parameterCopy)
  {
    if (trackerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFParameterStateProcessingContext.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];

    if (trackerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFParameterStateProcessingContext.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"contentAttributionTracker"}];

LABEL_3:
  v30.receiver = self;
  v30.super_class = WFParameterStateProcessingContext;
  v18 = [(WFParameterStateProcessingContext *)&v30 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_variableSource, source);
    objc_storeStrong(&v19->_parameter, parameter);
    v19->_isInputParameter = inputParameter;
    v19->_environment = environment;
    objc_storeStrong(&v19->_contentAttributionTracker, tracker);
    objc_storeStrong(&v19->_widgetSizeClass, class);
    if ([parameterCopy allowsMultipleValues])
    {
      isRangedSizeArray = [parameterCopy isRangedSizeArray];
      v21 = 0x7FFFFFFFFFFFFFFFLL;
      if (classCopy && isRangedSizeArray)
      {
        v22 = [parameterCopy arraySizeRangeForWidgetFamily:classCopy];
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