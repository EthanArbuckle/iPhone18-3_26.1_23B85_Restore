@interface NSUserDefaults(TSKRoleAdditions)
- (double)doubleForKey:()TSKRoleAdditions inRole:;
- (double)floatForKey:()TSKRoleAdditions inRole:;
- (uint64_t)BOOLForKey:()TSKRoleAdditions inRole:;
- (uint64_t)BOOLForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)arrayForKey:()TSKRoleAdditions inRole:;
- (uint64_t)arrayForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)dataForKey:()TSKRoleAdditions inRole:;
- (uint64_t)dataForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)dictionaryForKey:()TSKRoleAdditions inRole:;
- (uint64_t)dictionaryForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)doubleForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)floatForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)integerForKey:()TSKRoleAdditions inRole:;
- (uint64_t)integerForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)objectForKey:()TSKRoleAdditions inRole:;
- (uint64_t)objectForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)p_currentRole;
- (uint64_t)removeObjectForKey:()TSKRoleAdditions inRole:;
- (uint64_t)removeObjectForKeyInCurrentRole:()TSKRoleAdditions;
- (uint64_t)setBool:()TSKRoleAdditions forKey:inRole:;
- (uint64_t)setBool:()TSKRoleAdditions forKeyInCurrentRole:;
- (uint64_t)setDouble:()TSKRoleAdditions forKey:inRole:;
- (uint64_t)setDouble:()TSKRoleAdditions forKeyInCurrentRole:;
- (uint64_t)setFloat:()TSKRoleAdditions forKey:inRole:;
- (uint64_t)setFloat:()TSKRoleAdditions forKeyInCurrentRole:;
- (uint64_t)setInteger:()TSKRoleAdditions forKey:inRole:;
- (uint64_t)setInteger:()TSKRoleAdditions forKeyInCurrentRole:;
- (uint64_t)setObject:()TSKRoleAdditions forKey:inRole:;
- (uint64_t)setObject:()TSKRoleAdditions forKeyInCurrentRole:;
- (uint64_t)stringForKey:()TSKRoleAdditions inRole:;
- (uint64_t)stringForKeyInCurrentRole:()TSKRoleAdditions;
@end

@implementation NSUserDefaults(TSKRoleAdditions)

- (uint64_t)p_currentRole
{
  v0 = +[TSKApplicationDelegate sharedDelegate];

  return [v0 applicationName];
}

- (uint64_t)objectForKey:()TSKRoleAdditions inRole:
{
  v5 = [a1 objectForKey:{objc_msgSend(a1, "keyForRole:", a4)}];

  return [v5 objectForKey:a3];
}

- (uint64_t)setObject:()TSKRoleAdditions forKey:inRole:
{
  objc_sync_enter(a1);
  v9 = [objc_msgSend(a1 objectForKey:{objc_msgSend(a1, "keyForRole:", a5)), "mutableCopy"}];
  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  [v9 setObject:a3 forKey:a4];
  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];

  [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];

  return objc_sync_exit(a1);
}

- (uint64_t)removeObjectForKey:()TSKRoleAdditions inRole:
{
  objc_sync_enter(a1);
  v7 = [objc_msgSend(a1 objectForKey:{objc_msgSend(a1, "keyForRole:", a4)), "mutableCopy"}];
  [v7 removeObjectForKey:a3];
  if (v7)
  {
    [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  }

  return objc_sync_exit(a1);
}

- (uint64_t)stringForKey:()TSKRoleAdditions inRole:
{
  result = [a1 objectForKey:? inRole:?];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)arrayForKey:()TSKRoleAdditions inRole:
{
  result = [a1 objectForKey:? inRole:?];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)dictionaryForKey:()TSKRoleAdditions inRole:
{
  result = [a1 objectForKey:? inRole:?];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)dataForKey:()TSKRoleAdditions inRole:
{
  result = [a1 objectForKey:? inRole:?];
  if (result)
  {
    v2 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (uint64_t)integerForKey:()TSKRoleAdditions inRole:
{
  v1 = [a1 objectForKey:? inRole:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return [v2 integerValue];
}

- (double)floatForKey:()TSKRoleAdditions inRole:
{
  v1 = [a1 objectForKey:? inRole:?];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0.0;
    }
  }

  [v2 floatValue];
  return result;
}

- (double)doubleForKey:()TSKRoleAdditions inRole:
{
  v1 = [a1 objectForKey:? inRole:?];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0.0;
    }
  }

  [v2 doubleValue];
  return result;
}

- (uint64_t)BOOLForKey:()TSKRoleAdditions inRole:
{
  v1 = [a1 objectForKey:? inRole:?];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v2 isEqual:@"YES"])
    {
      return 1;
    }

    v5 = [v2 length];
    v3 = 1;
    if ([v2 compare:@"YES" options:1 range:{0, v5}])
    {
      v3 = 1;
      if ([v2 compare:@"Y" options:1 range:{0, v5}])
      {
        return [v2 integerValue] != 0;
      }
    }

    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 BOOLValue];
}

- (uint64_t)setInteger:()TSKRoleAdditions forKey:inRole:
{
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];

  return [a1 setObject:v8 forKey:a4 inRole:a5];
}

- (uint64_t)setFloat:()TSKRoleAdditions forKey:inRole:
{
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:?];

  return [a1 setObject:v7 forKey:a3 inRole:a4];
}

- (uint64_t)setDouble:()TSKRoleAdditions forKey:inRole:
{
  *&a2 = a2;
  v8 = [MEMORY[0x277CCABB0] numberWithFloat:a2];

  return [a1 setObject:v8 forKey:a4 inRole:a5];
}

- (uint64_t)setBool:()TSKRoleAdditions forKey:inRole:
{
  v8 = [MEMORY[0x277CCABB0] numberWithBool:?];

  return [a1 setObject:v8 forKey:a4 inRole:a5];
}

- (uint64_t)objectForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 objectForKey:a3 inRole:v5];
}

- (uint64_t)setObject:()TSKRoleAdditions forKeyInCurrentRole:
{
  v7 = [a1 p_currentRole];

  return [a1 setObject:a3 forKey:a4 inRole:v7];
}

- (uint64_t)removeObjectForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 removeObjectForKey:a3 inRole:v5];
}

- (uint64_t)stringForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 stringForKey:a3 inRole:v5];
}

- (uint64_t)arrayForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 arrayForKey:a3 inRole:v5];
}

- (uint64_t)dictionaryForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 dictionaryForKey:a3 inRole:v5];
}

- (uint64_t)dataForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 dataForKey:a3 inRole:v5];
}

- (uint64_t)integerForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 integerForKey:a3 inRole:v5];
}

- (uint64_t)floatForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 floatForKey:a3 inRole:v5];
}

- (uint64_t)doubleForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 doubleForKey:a3 inRole:v5];
}

- (uint64_t)BOOLForKeyInCurrentRole:()TSKRoleAdditions
{
  v5 = [a1 p_currentRole];

  return [a1 BOOLForKey:a3 inRole:v5];
}

- (uint64_t)setInteger:()TSKRoleAdditions forKeyInCurrentRole:
{
  v7 = [a1 p_currentRole];

  return [a1 setInteger:a3 forKey:a4 inRole:v7];
}

- (uint64_t)setFloat:()TSKRoleAdditions forKeyInCurrentRole:
{
  v7 = [a1 p_currentRole];
  *&v8 = a2;

  return [a1 setFloat:a4 forKey:v7 inRole:v8];
}

- (uint64_t)setDouble:()TSKRoleAdditions forKeyInCurrentRole:
{
  v7 = [a1 p_currentRole];

  return [a1 setDouble:a4 forKey:v7 inRole:a2];
}

- (uint64_t)setBool:()TSKRoleAdditions forKeyInCurrentRole:
{
  v7 = [a1 p_currentRole];

  return [a1 setBool:a3 forKey:a4 inRole:v7];
}

@end