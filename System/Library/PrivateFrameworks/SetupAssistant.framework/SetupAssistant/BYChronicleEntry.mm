@interface BYChronicleEntry
- (BOOL)createdOnCurrentMajorVersion;
- (BOOL)hasCrossedEBoundarySinceCreationForCurrentProductVersion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntry:(id)a3;
- (BYChronicleEntry)init;
- (BYChronicleEntry)initWithDictionary:(id)a3;
- (BYChronicleEntry)initWithProductVersion:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation BYChronicleEntry

- (BYChronicleEntry)init
{
  v3 = +[BYDeviceConfiguration currentConfiguration];
  v4 = [v3 productVersion];
  v5 = [(BYChronicleEntry *)self initWithProductVersion:v4];

  return v5;
}

- (BYChronicleEntry)initWithProductVersion:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BYChronicleEntry;
  v5 = [(BYChronicleEntry *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYChronicleEntry *)v5 setProductVersion:v4];
  }

  return v6;
}

- (BYChronicleEntry)initWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"productVersion"];
  v5 = [(BYChronicleEntry *)self initWithProductVersion:v4];

  return v5;
}

- (BOOL)createdOnCurrentMajorVersion
{
  v3 = +[BYDeviceConfiguration currentConfiguration];
  v4 = [v3 productVersion];
  v5 = [v4 componentsSeparatedByString:@"."];

  if ([v5 count])
  {
    v6 = [v5 objectAtIndex:0];
    v7 = [v6 intValue];

    v8 = [(BYChronicleEntry *)self productVersion];
    v9 = [v8 componentsSeparatedByString:@"."];

    if ([v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      v11 = [v10 intValue];

      v12 = v7 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)hasCrossedEBoundarySinceCreationForCurrentProductVersion:(id)a3
{
  v4 = a3;
  v5 = [v4 componentsSeparatedByString:@"."];
  if ([v5 count] >= 2)
  {
    v7 = [(BYChronicleEntry *)self productVersion];
    v8 = [v7 componentsSeparatedByString:@"."];

    if ([v8 count] >= 2)
    {
      v9 = _BYLoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [BYChronicleEntry hasCrossedEBoundarySinceCreationForCurrentProductVersion:];
      }

      v10 = [v5 objectAtIndex:0];
      v11 = [v10 intValue];

      v12 = [v5 objectAtIndex:1];
      v13 = [v12 intValue];

      v14 = [v8 objectAtIndex:0];
      v15 = [v14 intValue];

      v16 = [v8 objectAtIndex:1];
      v17 = [v16 intValue];

      if (v17 > 3)
      {
        ++v15;
      }

      v18 = _BYLoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [(BYChronicleEntry *)v15 hasCrossedEBoundarySinceCreationForCurrentProductVersion:v18];
      }

      if (v13 >= 4)
      {
        v6 = v11 >= v15;
      }

      else
      {
        v6 = v11 > v15;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"productVersion";
  v2 = [(BYChronicleEntry *)self productVersion];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(BYChronicleEntry *)self productVersion];
  v6 = [v3 stringWithFormat:@"<%@ : %p> Product Version: %@", v4, self, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(BYChronicleEntry *)self isEqualToEntry:v4];

  return v5;
}

- (BOOL)isEqualToEntry:(id)a3
{
  v4 = a3;
  v5 = [(BYChronicleEntry *)self productVersion];
  v6 = [v4 productVersion];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (void)hasCrossedEBoundarySinceCreationForCurrentProductVersion:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0_1();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_1B862F000, v2, OS_LOG_TYPE_DEBUG, "%s: %{public}@ -> %{public}@", v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)hasCrossedEBoundarySinceCreationForCurrentProductVersion:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B862F000, v0, OS_LOG_TYPE_ERROR, "%s: exception = %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)hasCrossedEBoundarySinceCreationForCurrentProductVersion:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136315394;
  v4 = "[BYChronicleEntry hasCrossedEBoundarySinceCreationForCurrentProductVersion:]";
  v5 = 1024;
  v6 = a1;
  _os_log_debug_impl(&dword_1B862F000, a2, OS_LOG_TYPE_DEBUG, "%s: following E major = %d", &v3, 0x12u);
  v2 = *MEMORY[0x1E69E9840];
}

@end