@interface PTSerialization
+ (BOOL)_supportedOptions:(id)a3 forObject:(id)a4;
+ (BOOL)registerSerializationClass:(Class)a3;
+ (BOOL)writeObject:(id)a3 toData:(id)a4 options:(id)a5 error:(id *)a6;
+ (Class)classForType:(unsigned int)a3;
+ (id)_errorFromAtomError:(id)a3;
+ (id)_errorFromAtomStream:(id)a3;
+ (id)_errorFromAtomWriter:(id)a3;
+ (id)dataFromObject:(id)a3 options:(id)a4 error:(id *)a5;
+ (id)infoForType:(unsigned int)a3;
+ (id)objectFromData:(id)a3 error:(id *)a4;
+ (unint64_t)sizeOfSerializedObject:(id)a3 options:(id)a4;
+ (void)registerType:(unsigned int)a3 providerClass:(Class)a4;
+ (void)registerTypeInfo:(id)a3;
@end

@implementation PTSerialization

+ (BOOL)registerSerializationClass:(Class)a3
{
  v4 = [(objc_class *)a3 conformsToProtocol:&unk_283803278];
  if (v4)
  {
    [(objc_class *)a3 registerForSerialization];
  }

  else
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PTSerialization *)a3 registerSerializationClass:v5];
    }
  }

  return v4;
}

+ (unint64_t)sizeOfSerializedObject:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isValidObject:v6])
  {
    v8 = [v6 sizeOfSerializedObjectWithOptions:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dataFromObject:(id)a3 options:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  LODWORD(a5) = [a1 writeObject:v9 toData:v10 options:v8 error:a5];

  if (a5)
  {
    v11 = [v10 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_supportedOptions:(id)a3 forObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"PTSerializationVersionKey"];

  if (v7)
  {
    v8 = [v5 objectForKeyedSubscript:@"PTSerializationVersionKey"];
    v9 = [v8 integerValue];

    v10 = [v6 supportsVersion:v9];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)writeObject:(id)a3 toData:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if ([a1 isValidObject:v10])
  {
    if ([a1 _supportedOptions:v12 forObject:v10])
    {
      v13 = [[PTDataByteWriter alloc] initWithMutableData:v11];
      v14 = [[PTAtomWriter alloc] initWithByteWriter:v13];
      [v10 writeToAtomWriter:v14 options:v12];
      v15 = 0;
      goto LABEL_7;
    }

    v16 = [a1 _errorUnsupportedVersion];
  }

  else
  {
    v16 = [a1 _errorNotSerializable];
  }

  v15 = v16;
  v14 = 0;
  v13 = 0;
LABEL_7:
  v17 = [(PTAtomWriter *)v14 error];

  if (v17)
  {
    v18 = [a1 _errorFromAtomWriter:v14];

    v15 = v18;
  }

  if (a6 && v15)
  {
    v19 = v15;
    *a6 = v15;
  }

  return v15 == 0;
}

+ (void)registerTypeInfo:(id)a3
{
  v3 = a3;
  v4 = _PTLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(PTSerialization *)v3 registerTypeInfo:v4];
  }

  os_unfair_lock_lock(&sInfoForTypeLock);
  v5 = sInfoForType;
  if (!sInfoForType)
  {
    v6 = objc_opt_new();
    v7 = sInfoForType;
    sInfoForType = v6;

    v5 = sInfoForType;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v3, "type")}];
  [v5 setObject:v3 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&sInfoForTypeLock);
}

+ (id)infoForType:(unsigned int)a3
{
  v3 = *&a3;
  os_unfair_lock_lock(&sInfoForTypeLock);
  v4 = sInfoForType;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  os_unfair_lock_unlock(&sInfoForTypeLock);

  return v6;
}

+ (Class)classForType:(unsigned int)a3
{
  v3 = [a1 infoForType:*&a3];
  v4 = [v3 providerClass];

  return v4;
}

+ (void)registerType:(unsigned int)a3 providerClass:(Class)a4
{
  v5 = [[PTSerializationTypeInfo alloc] initWithType:*&a3 providerClass:a4];
  [a1 registerTypeInfo:v5];
}

+ (id)_errorFromAtomWriter:(id)a3
{
  v4 = [a3 error];
  v5 = [a1 _errorFromAtomError:v4];

  return v5;
}

+ (id)_errorFromAtomStream:(id)a3
{
  v4 = [a3 error];
  v5 = [a1 _errorFromAtomError:v4];

  return v5;
}

+ (id)_errorFromAtomError:(id)a3
{
  v4 = [a3 code];
  if (v4)
  {
    v4 = [a1 _errorWithCode:3];
  }

  return v4;
}

+ (id)objectFromData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[PTDataByteStream alloc] initWithData:v6];

  v8 = [[PTAtomStream alloc] initWithByteStream:v7];
  v9 = [(PTAtomStream *)v8 error];

  if (v9 || (v10 = [a1 classForType:{-[PTAtomStream atomType](v8, "atomType")}]) == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 objectFromAtomStream:v8];
  }

  v12 = [(PTAtomStream *)v8 error];

  if (v12)
  {
    v13 = [a1 _errorFromAtomStream:v8];
  }

  else
  {
    if (v11)
    {
      v14 = 0;
      goto LABEL_11;
    }

    v13 = [a1 _errorNotSerializable];
  }

  v14 = v13;
  if (a4 && v13)
  {
    v15 = v13;
    *a4 = v14;
  }

LABEL_11:

  return v11;
}

+ (void)registerSerializationClass:(objc_class *)a1 .cold.1(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "attempt to register class %@ for serialization that does not support PTSerialization protocol", &v4, 0xCu);
}

+ (void)registerTypeInfo:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromFourCharCode([a1 type]);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_2243FB000, a2, OS_LOG_TYPE_DEBUG, "registering atom type %@", &v4, 0xCu);
}

@end