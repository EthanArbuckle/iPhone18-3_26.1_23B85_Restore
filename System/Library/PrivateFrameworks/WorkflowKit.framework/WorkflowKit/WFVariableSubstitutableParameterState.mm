@interface WFVariableSubstitutableParameterState
+ (Class)processingValueClass;
+ (NSArray)processingValueClasses;
+ (id)serializedRepresentationFromValue:(id)value;
+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (BOOL)isEqual:(id)equal;
- (NSArray)containedVariables;
- (NSString)debugDescription;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableSubstitutableParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter;
- (WFVariableSubstitutableParameterState)initWithValue:(id)value;
- (WFVariableSubstitutableParameterState)initWithVariable:(id)variable;
- (unint64_t)hash;
- (void)getObjectRepresentationOfVariableWithContext:(id)context processingValueClass:(Class)class valueHandler:(id)handler;
- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler;
@end

@implementation WFVariableSubstitutableParameterState

- (WFPropertyListObject)serializedRepresentation
{
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    WFSerializedVariableObject(variable2);
  }

  else
  {
    v5 = objc_opt_class();
    variable2 = [(WFVariableSubstitutableParameterState *)self value];
    [v5 serializedRepresentationFromValue:variable2];
  }
  v6 = ;

  return v6;
}

- (NSString)debugDescription
{
  value = [(WFVariableSubstitutableParameterState *)self value];

  if (value)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    value2 = [(WFVariableSubstitutableParameterState *)self value];
    [v4 stringWithFormat:@"<%@: %p, value: %@>", v6, self, value2];
    v11 = LABEL_5:;

    goto LABEL_6;
  }

  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v6 = NSStringFromClass(v10);
    value2 = [(WFVariableSubstitutableParameterState *)self variable];
    [v9 stringWithFormat:@"<%@: %p, variable: %@>", v6, self, value2];
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = WFVariableSubstitutableParameterState;
  v11 = [(WFVariableSubstitutableParameterState *)&v13 debugDescription];
LABEL_6:

  return v11;
}

- (void)processWithContext:(id)context userInputRequiredHandler:(id)handler valueHandler:(id)valueHandler
{
  contextCopy = context;
  handlerCopy = handler;
  valueHandlerCopy = valueHandler;
  variable = [(WFVariableSubstitutableParameterState *)self variable];

  if (variable)
  {
    variable2 = [(WFVariableSubstitutableParameterState *)self variable];
    if (variable2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      prompt = [variable2 prompt];
      handlerCopy[2](handlerCopy, prompt, 0);
    }

    else
    {

      processingValueClass = [objc_opt_class() processingValueClass];
      if ([processingValueClass isEqual:objc_opt_class()])
      {
        variable3 = [(WFVariableSubstitutableParameterState *)self variable];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __98__WFVariableSubstitutableParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
        v17[3] = &unk_1E83796D8;
        v18 = valueHandlerCopy;
        [variable3 getFileRepresentationWithContext:contextCopy completionHandler:v17];
      }

      else
      {
        [(WFVariableSubstitutableParameterState *)self getObjectRepresentationOfVariableWithContext:contextCopy processingValueClass:processingValueClass valueHandler:valueHandlerCopy];
      }
    }
  }

  else
  {
    value = [(WFVariableSubstitutableParameterState *)self value];
    (*(valueHandlerCopy + 2))(valueHandlerCopy, value, 0);
  }
}

- (void)getObjectRepresentationOfVariableWithContext:(id)context processingValueClass:(Class)class valueHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  variable = [(WFVariableSubstitutableParameterState *)self variable];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __120__WFVariableSubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke;
  v12[3] = &unk_1E83796B0;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [variable getObjectRepresentationForClass:class context:contextCopy completionHandler:v12];
}

- (NSArray)containedVariables
{
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  variable = [(WFVariableSubstitutableParameterState *)self variable];
  v5 = [v3 initWithObjects:{variable, 0}];

  return v5;
}

- (unint64_t)hash
{
  value = [(WFVariableSubstitutableParameterState *)self value];
  v4 = [value hash];
  variable = [(WFVariableSubstitutableParameterState *)self variable];
  v6 = [variable hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      value = [(WFVariableSubstitutableParameterState *)self value];
      value2 = [(WFVariableSubstitutableParameterState *)equalCopy value];
      if ([value isEqual:value2])
      {

LABEL_8:
        variable = [(WFVariableSubstitutableParameterState *)self variable];
        if (variable || ([(WFVariableSubstitutableParameterState *)equalCopy variable], (value2 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          variable2 = [(WFVariableSubstitutableParameterState *)self variable];
          variable3 = [(WFVariableSubstitutableParameterState *)equalCopy variable];
          v7 = [variable2 isEqual:variable3];

          if (variable)
          {
LABEL_14:

            goto LABEL_15;
          }
        }

        else
        {
          v7 = 1;
        }

        goto LABEL_14;
      }

      value3 = [(WFVariableSubstitutableParameterState *)self value];

      if (!value3)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (WFVariableSubstitutableParameterState)initWithSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:77 description:@"Cannot initialize an abstract class"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = WFDeserializedVariableObject(representationCopy, providerCopy, parameterCopy);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(WFVariableSubstitutableParameterState *)self initWithVariable:v13];
LABEL_12:
    self = v14;
    selfCopy2 = self;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 representsSingleContentVariable])
  {

LABEL_10:
    v13 = [objc_opt_class() valueFromSerializedRepresentation:representationCopy variableProvider:providerCopy parameter:parameterCopy];
    if (!v13)
    {
      selfCopy2 = 0;
      goto LABEL_14;
    }

    v14 = [(WFVariableSubstitutableParameterState *)self initWithValue:v13];
    goto LABEL_12;
  }

  stringsAndVariables = [v13 stringsAndVariables];
  firstObject = [stringsAndVariables firstObject];
  self = [(WFVariableSubstitutableParameterState *)self initWithVariable:firstObject];

  selfCopy2 = self;
LABEL_14:

  return selfCopy2;
}

- (WFVariableSubstitutableParameterState)initWithVariable:(id)variable
{
  variableCopy = variable;
  if (!variableCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"variable"}];
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:66 description:@"Cannot initialize an abstract class"];
  }

  v14.receiver = self;
  v14.super_class = WFVariableSubstitutableParameterState;
  v8 = [(WFVariableSubstitutableParameterState *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_variable, variable);
    v10 = v9;
  }

  return v9;
}

- (WFVariableSubstitutableParameterState)initWithValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:54 description:@"Cannot initialize an abstract class"];
  }

  v14.receiver = self;
  v14.super_class = WFVariableSubstitutableParameterState;
  v7 = [(WFVariableSubstitutableParameterState *)&v14 init];
  if (v7)
  {
    if ([valueCopy conformsToProtocol:&unk_1F4A9ECC8])
    {
      v8 = [valueCopy copy];
    }

    else
    {
      v8 = valueCopy;
    }

    value = v7->_value;
    v7->_value = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)serializedRepresentationFromValue:(id)value
{
  valueCopy = value;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"+serializedRepresentationFromValue is unimplemented" userInfo:0];
  objc_exception_throw(v4);
}

+ (id)valueFromSerializedRepresentation:(id)representation variableProvider:(id)provider parameter:(id)parameter
{
  representationCopy = representation;
  providerCopy = provider;
  parameterCopy = parameter;
  v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"+valueFromSerializedRepresentation is unimplemented" userInfo:0];
  objc_exception_throw(v10);
}

+ (NSArray)processingValueClasses
{
  v15[1] = *MEMORY[0x1E69E9840];
  Class = object_getClass(self);
  MethodImplementation = class_getMethodImplementation(Class, sel_processingValueClass);
  v5 = objc_opt_class();
  v6 = object_getClass(v5);
  if (MethodImplementation == class_getMethodImplementation(v6, sel_processingValueClass))
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D920];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) both +processingValueClass and +processingValueClasses are unimplemented. You must implement at least one of them", self];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v15[0] = [self processingValueClass];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (Class)processingValueClass
{
  Class = object_getClass(self);
  MethodImplementation = class_getMethodImplementation(Class, sel_processingValueClasses);
  v5 = objc_opt_class();
  v6 = object_getClass(v5);
  v7 = class_getMethodImplementation(v6, sel_processingValueClasses);
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D920];
  if (MethodImplementation == v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) both +processingValueClass and +processingValueClasses are unimplemented. You must implement at least one of them", self];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) +processingValueClasses is implemented and you should use that", self];
  }
  v10 = ;
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

@end