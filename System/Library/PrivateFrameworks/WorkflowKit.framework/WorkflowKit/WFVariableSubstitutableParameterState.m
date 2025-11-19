@interface WFVariableSubstitutableParameterState
+ (Class)processingValueClass;
+ (NSArray)processingValueClasses;
+ (id)serializedRepresentationFromValue:(id)a3;
+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSArray)containedVariables;
- (NSString)debugDescription;
- (WFPropertyListObject)serializedRepresentation;
- (WFVariableSubstitutableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5;
- (WFVariableSubstitutableParameterState)initWithValue:(id)a3;
- (WFVariableSubstitutableParameterState)initWithVariable:(id)a3;
- (unint64_t)hash;
- (void)getObjectRepresentationOfVariableWithContext:(id)a3 processingValueClass:(Class)a4 valueHandler:(id)a5;
- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5;
@end

@implementation WFVariableSubstitutableParameterState

- (WFPropertyListObject)serializedRepresentation
{
  v3 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v3)
  {
    v4 = [(WFVariableSubstitutableParameterState *)self variable];
    WFSerializedVariableObject(v4);
  }

  else
  {
    v5 = objc_opt_class();
    v4 = [(WFVariableSubstitutableParameterState *)self value];
    [v5 serializedRepresentationFromValue:v4];
  }
  v6 = ;

  return v6;
}

- (NSString)debugDescription
{
  v3 = [(WFVariableSubstitutableParameterState *)self value];

  if (v3)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [(WFVariableSubstitutableParameterState *)self value];
    [v4 stringWithFormat:@"<%@: %p, value: %@>", v6, self, v7];
    v11 = LABEL_5:;

    goto LABEL_6;
  }

  v8 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v6 = NSStringFromClass(v10);
    v7 = [(WFVariableSubstitutableParameterState *)self variable];
    [v9 stringWithFormat:@"<%@: %p, variable: %@>", v6, self, v7];
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = WFVariableSubstitutableParameterState;
  v11 = [(WFVariableSubstitutableParameterState *)&v13 debugDescription];
LABEL_6:

  return v11;
}

- (void)processWithContext:(id)a3 userInputRequiredHandler:(id)a4 valueHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WFVariableSubstitutableParameterState *)self variable];

  if (v11)
  {
    v12 = [(WFVariableSubstitutableParameterState *)self variable];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v13 = [v12 prompt];
      v9[2](v9, v13, 0);
    }

    else
    {

      v14 = [objc_opt_class() processingValueClass];
      if ([v14 isEqual:objc_opt_class()])
      {
        v15 = [(WFVariableSubstitutableParameterState *)self variable];
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __98__WFVariableSubstitutableParameterState_processWithContext_userInputRequiredHandler_valueHandler___block_invoke;
        v17[3] = &unk_1E83796D8;
        v18 = v10;
        [v15 getFileRepresentationWithContext:v8 completionHandler:v17];
      }

      else
      {
        [(WFVariableSubstitutableParameterState *)self getObjectRepresentationOfVariableWithContext:v8 processingValueClass:v14 valueHandler:v10];
      }
    }
  }

  else
  {
    v16 = [(WFVariableSubstitutableParameterState *)self value];
    (*(v10 + 2))(v10, v16, 0);
  }
}

- (void)getObjectRepresentationOfVariableWithContext:(id)a3 processingValueClass:(Class)a4 valueHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(WFVariableSubstitutableParameterState *)self variable];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __120__WFVariableSubstitutableParameterState_getObjectRepresentationOfVariableWithContext_processingValueClass_valueHandler___block_invoke;
  v12[3] = &unk_1E83796B0;
  v13 = v8;
  v11 = v8;
  [v10 getObjectRepresentationForClass:a4 context:v9 completionHandler:v12];
}

- (NSArray)containedVariables
{
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  v4 = [(WFVariableSubstitutableParameterState *)self variable];
  v5 = [v3 initWithObjects:{v4, 0}];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(WFVariableSubstitutableParameterState *)self value];
  v4 = [v3 hash];
  v5 = [(WFVariableSubstitutableParameterState *)self variable];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFVariableSubstitutableParameterState *)self value];
      v6 = [(WFVariableSubstitutableParameterState *)v4 value];
      if ([v5 isEqual:v6])
      {

LABEL_8:
        v9 = [(WFVariableSubstitutableParameterState *)self variable];
        if (v9 || ([(WFVariableSubstitutableParameterState *)v4 variable], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v10 = [(WFVariableSubstitutableParameterState *)self variable];
          v11 = [(WFVariableSubstitutableParameterState *)v4 variable];
          v7 = [v10 isEqual:v11];

          if (v9)
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

      v8 = [(WFVariableSubstitutableParameterState *)self value];

      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (WFVariableSubstitutableParameterState)initWithSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_class();
  if (v12 == objc_opt_class())
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:77 description:@"Cannot initialize an abstract class"];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = WFDeserializedVariableObject(v9, v10, v11);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [(WFVariableSubstitutableParameterState *)self initWithVariable:v13];
LABEL_12:
    self = v14;
    v17 = self;
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![v13 representsSingleContentVariable])
  {

LABEL_10:
    v13 = [objc_opt_class() valueFromSerializedRepresentation:v9 variableProvider:v10 parameter:v11];
    if (!v13)
    {
      v17 = 0;
      goto LABEL_14;
    }

    v14 = [(WFVariableSubstitutableParameterState *)self initWithValue:v13];
    goto LABEL_12;
  }

  v15 = [v13 stringsAndVariables];
  v16 = [v15 firstObject];
  self = [(WFVariableSubstitutableParameterState *)self initWithVariable:v16];

  v17 = self;
LABEL_14:

  return v17;
}

- (WFVariableSubstitutableParameterState)initWithVariable:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"variable"}];
  }

  v7 = objc_opt_class();
  if (v7 == objc_opt_class())
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:66 description:@"Cannot initialize an abstract class"];
  }

  v14.receiver = self;
  v14.super_class = WFVariableSubstitutableParameterState;
  v8 = [(WFVariableSubstitutableParameterState *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_variable, a3);
    v10 = v9;
  }

  return v9;
}

- (WFVariableSubstitutableParameterState)initWithValue:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"value"}];
  }

  v6 = objc_opt_class();
  if (v6 == objc_opt_class())
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"WFVariableSubstitutableParameterState.m" lineNumber:54 description:@"Cannot initialize an abstract class"];
  }

  v14.receiver = self;
  v14.super_class = WFVariableSubstitutableParameterState;
  v7 = [(WFVariableSubstitutableParameterState *)&v14 init];
  if (v7)
  {
    if ([v5 conformsToProtocol:&unk_1F4A9ECC8])
    {
      v8 = [v5 copy];
    }

    else
    {
      v8 = v5;
    }

    value = v7->_value;
    v7->_value = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)serializedRepresentationFromValue:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"+serializedRepresentationFromValue is unimplemented" userInfo:0];
  objc_exception_throw(v4);
}

+ (id)valueFromSerializedRepresentation:(id)a3 variableProvider:(id)a4 parameter:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:@"+valueFromSerializedRepresentation is unimplemented" userInfo:0];
  objc_exception_throw(v10);
}

+ (NSArray)processingValueClasses
{
  v15[1] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  MethodImplementation = class_getMethodImplementation(Class, sel_processingValueClass);
  v5 = objc_opt_class();
  v6 = object_getClass(v5);
  if (MethodImplementation == class_getMethodImplementation(v6, sel_processingValueClass))
  {
    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D920];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) both +processingValueClass and +processingValueClasses are unimplemented. You must implement at least one of them", a1];
    v13 = [v10 exceptionWithName:v11 reason:v12 userInfo:0];
    v14 = v13;

    objc_exception_throw(v13);
  }

  v15[0] = [a1 processingValueClass];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (Class)processingValueClass
{
  Class = object_getClass(a1);
  MethodImplementation = class_getMethodImplementation(Class, sel_processingValueClasses);
  v5 = objc_opt_class();
  v6 = object_getClass(v5);
  v7 = class_getMethodImplementation(v6, sel_processingValueClasses);
  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D920];
  if (MethodImplementation == v7)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) both +processingValueClass and +processingValueClasses are unimplemented. You must implement at least one of them", a1];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) +processingValueClasses is implemented and you should use that", a1];
  }
  v10 = ;
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

@end