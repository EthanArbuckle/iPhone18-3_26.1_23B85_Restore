@interface PXGShaderFunction
+ (NSArray)shaderFunctions;
+ (NSDictionary)shaderFunctionByName;
- (PXGShaderFunction)initWithName:(id)a3 assignmentVariable:(id)a4 isOpaque:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXGShaderFunction

- (unint64_t)hash
{
  v2 = [(PXGShaderFunction *)self name];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXGShaderFunction *)self name];
  v7 = [(PXGShaderFunction *)self assignmentVariable];
  v8 = [(PXGShaderFunction *)self isOpaque];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = v9;
  v11 = [v3 stringWithFormat:@"<%@:%p name:%@ assignmentVariable:%@ isOpaque:%@>", v5, self, v6, v7, v10];;

  return v11;
}

- (PXGShaderFunction)initWithName:(id)a3 assignmentVariable:(id)a4 isOpaque:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PXGShaderFunction;
  v10 = [(PXGShaderFunction *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v9 copy];
    assignmentVariable = v10->_assignmentVariable;
    v10->_assignmentVariable = v13;

    v10->_isOpaque = a5;
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