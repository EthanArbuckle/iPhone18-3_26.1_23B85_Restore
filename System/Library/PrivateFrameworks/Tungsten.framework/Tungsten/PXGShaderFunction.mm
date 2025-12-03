@interface PXGShaderFunction
+ (NSArray)shaderFunctions;
+ (NSDictionary)shaderFunctionByName;
- (PXGShaderFunction)initWithName:(id)name assignmentVariable:(id)variable isOpaque:(BOOL)opaque;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXGShaderFunction

- (unint64_t)hash
{
  name = [(PXGShaderFunction *)self name];
  v3 = [name hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(PXGShaderFunction *)self name];
  assignmentVariable = [(PXGShaderFunction *)self assignmentVariable];
  isOpaque = [(PXGShaderFunction *)self isOpaque];
  v9 = @"NO";
  if (isOpaque)
  {
    v9 = @"YES";
  }

  v10 = v9;
  v11 = [v3 stringWithFormat:@"<%@:%p name:%@ assignmentVariable:%@ isOpaque:%@>", v5, self, name, assignmentVariable, v10];;

  return v11;
}

- (PXGShaderFunction)initWithName:(id)name assignmentVariable:(id)variable isOpaque:(BOOL)opaque
{
  nameCopy = name;
  variableCopy = variable;
  v16.receiver = self;
  v16.super_class = PXGShaderFunction;
  v10 = [(PXGShaderFunction *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [variableCopy copy];
    assignmentVariable = v10->_assignmentVariable;
    v10->_assignmentVariable = v13;

    v10->_isOpaque = opaque;
  }

  return v10;
}

+ (NSDictionary)shaderFunctionByName
{
  if (shaderFunctionByName_onceToken != -1)
  {
    dispatch_once(&shaderFunctionByName_onceToken, &__block_literal_global_19);
  }

  v3 = shaderFunctionByName_shaderFunctionByName;

  return v3;
}

void __41__PXGShaderFunction_shaderFunctionByName__block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = +[PXGShaderFunction shaderFunctions];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 name];
        [v0 setObject:v6 forKeyedSubscript:v7];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = shaderFunctionByName_shaderFunctionByName;
  shaderFunctionByName_shaderFunctionByName = v0;
}

+ (NSArray)shaderFunctions
{
  if (shaderFunctions_onceToken != -1)
  {
    dispatch_once(&shaderFunctions_onceToken, &__block_literal_global_2645);
  }

  v3 = shaderFunctions_shaderFunctions;

  return v3;
}

void __36__PXGShaderFunction_shaderFunctions__block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = [[PXGShaderFunction alloc] initWithName:@"fragmentTextureCoordinates" assignmentVariable:@"textureCoordinates" isOpaque:1];
  v1 = [[PXGShaderFunction alloc] initWithName:@"fragmentColor" assignmentVariable:@"color.rgb" isOpaque:1, v0];
  v5[1] = v1;
  v2 = [[PXGShaderFunction alloc] initWithName:@"fragmentAlpha" assignmentVariable:@"maskAlpha" isOpaque:0];
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v4 = shaderFunctions_shaderFunctions;
  shaderFunctions_shaderFunctions = v3;
}

@end