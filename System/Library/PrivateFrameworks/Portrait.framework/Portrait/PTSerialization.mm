@interface PTSerialization
+ (BOOL)_supportedOptions:(id)options forObject:(id)object;
+ (BOOL)registerSerializationClass:(Class)class;
+ (BOOL)writeObject:(id)object toData:(id)data options:(id)options error:(id *)error;
+ (Class)classForType:(unsigned int)type;
+ (id)_errorFromAtomError:(id)error;
+ (id)_errorFromAtomStream:(id)stream;
+ (id)_errorFromAtomWriter:(id)writer;
+ (id)dataFromObject:(id)object options:(id)options error:(id *)error;
+ (id)infoForType:(unsigned int)type;
+ (id)objectFromData:(id)data error:(id *)error;
+ (unint64_t)sizeOfSerializedObject:(id)object options:(id)options;
+ (void)registerType:(unsigned int)type providerClass:(Class)class;
+ (void)registerTypeInfo:(id)info;
@end

@implementation PTSerialization

+ (BOOL)registerSerializationClass:(Class)class
{
  v4 = [(objc_class *)class conformsToProtocol:&unk_283803278];
  if (v4)
  {
    [(objc_class *)class registerForSerialization];
  }

  else
  {
    v5 = _PTLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(PTSerialization *)class registerSerializationClass:v5];
    }
  }

  return v4;
}

+ (unint64_t)sizeOfSerializedObject:(id)object options:(id)options
{
  objectCopy = object;
  optionsCopy = options;
  if ([self isValidObject:objectCopy])
  {
    v8 = [objectCopy sizeOfSerializedObjectWithOptions:optionsCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)dataFromObject:(id)object options:(id)options error:(id *)error
{
  optionsCopy = options;
  objectCopy = object;
  v10 = objc_opt_new();
  LODWORD(error) = [self writeObject:objectCopy toData:v10 options:optionsCopy error:error];

  if (error)
  {
    v11 = [v10 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_supportedOptions:(id)options forObject:(id)object
{
  optionsCopy = options;
  objectCopy = object;
  v7 = [optionsCopy objectForKeyedSubscript:@"PTSerializationVersionKey"];

  if (v7)
  {
    v8 = [optionsCopy objectForKeyedSubscript:@"PTSerializationVersionKey"];
    integerValue = [v8 integerValue];

    v10 = [objectCopy supportsVersion:integerValue];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)writeObject:(id)object toData:(id)data options:(id)options error:(id *)error
{
  objectCopy = object;
  dataCopy = data;
  optionsCopy = options;
  if ([self isValidObject:objectCopy])
  {
    if ([self _supportedOptions:optionsCopy forObject:objectCopy])
    {
      v13 = [[PTDataByteWriter alloc] initWithMutableData:dataCopy];
      v14 = [[PTAtomWriter alloc] initWithByteWriter:v13];
      [objectCopy writeToAtomWriter:v14 options:optionsCopy];
      v15 = 0;
      goto LABEL_7;
    }

    _errorUnsupportedVersion = [self _errorUnsupportedVersion];
  }

  else
  {
    _errorUnsupportedVersion = [self _errorNotSerializable];
  }

  v15 = _errorUnsupportedVersion;
  v14 = 0;
  v13 = 0;
LABEL_7:
  error = [(PTAtomWriter *)v14 error];

  if (error)
  {
    v18 = [self _errorFromAtomWriter:v14];

    v15 = v18;
  }

  if (error && v15)
  {
    v19 = v15;
    *error = v15;
  }

  return v15 == 0;
}

+ (void)registerTypeInfo:(id)info
{
  infoCopy = info;
  v4 = _PTLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(PTSerialization *)infoCopy registerTypeInfo:v4];
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

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(infoCopy, "type")}];
  [v5 setObject:infoCopy forKeyedSubscript:v8];

  os_unfair_lock_unlock(&sInfoForTypeLock);
}

+ (id)infoForType:(unsigned int)type
{
  v3 = *&type;
  os_unfair_lock_lock(&sInfoForTypeLock);
  v4 = sInfoForType;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3];
  v6 = [v4 objectForKeyedSubscript:v5];

  os_unfair_lock_unlock(&sInfoForTypeLock);

  return v6;
}

+ (Class)classForType:(unsigned int)type
{
  v3 = [self infoForType:*&type];
  providerClass = [v3 providerClass];

  return providerClass;
}

+ (void)registerType:(unsigned int)type providerClass:(Class)class
{
  v5 = [[PTSerializationTypeInfo alloc] initWithType:*&type providerClass:class];
  [self registerTypeInfo:v5];
}

+ (id)_errorFromAtomWriter:(id)writer
{
  error = [writer error];
  v5 = [self _errorFromAtomError:error];

  return v5;
}

+ (id)_errorFromAtomStream:(id)stream
{
  error = [stream error];
  v5 = [self _errorFromAtomError:error];

  return v5;
}

+ (id)_errorFromAtomError:(id)error
{
  code = [error code];
  if (code)
  {
    code = [self _errorWithCode:3];
  }

  return code;
}

+ (id)objectFromData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[PTDataByteStream alloc] initWithData:dataCopy];

  v8 = [[PTAtomStream alloc] initWithByteStream:v7];
  error = [(PTAtomStream *)v8 error];

  if (error || (v10 = [self classForType:{-[PTAtomStream atomType](v8, "atomType")}]) == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v10 objectFromAtomStream:v8];
  }

  error2 = [(PTAtomStream *)v8 error];

  if (error2)
  {
    _errorNotSerializable = [self _errorFromAtomStream:v8];
  }

  else
  {
    if (v11)
    {
      v14 = 0;
      goto LABEL_11;
    }

    _errorNotSerializable = [self _errorNotSerializable];
  }

  v14 = _errorNotSerializable;
  if (error && _errorNotSerializable)
  {
    v15 = _errorNotSerializable;
    *error = v14;
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