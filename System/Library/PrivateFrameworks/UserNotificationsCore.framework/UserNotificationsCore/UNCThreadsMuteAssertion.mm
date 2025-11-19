@interface UNCThreadsMuteAssertion
+ (id)threadsMuteAssertion;
+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)a3;
- (BOOL)isActiveForThreadIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)expirationDateByThreadID;
- (NSSet)threadIDs;
- (UNCThreadsMuteAssertion)initWithCoder:(id)a3;
- (id)_initWithExpirationDateByThreadID:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4;
@end

@implementation UNCThreadsMuteAssertion

+ (id)threadsMuteAssertion
{
  v2 = [UNCThreadsMuteAssertion alloc];
  v3 = [(UNCThreadsMuteAssertion *)v2 _initWithExpirationDateByThreadID:MEMORY[0x1E695E0F8]];

  return v3;
}

+ (id)threadsMuteAssertionWithExpirationDateByThreadID:(id)a3
{
  v3 = a3;
  v4 = [[UNCThreadsMuteAssertion alloc] _initWithExpirationDateByThreadID:v3];

  return v4;
}

- (id)_initWithExpirationDateByThreadID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UNCThreadsMuteAssertion;
  v5 = [(UNCMuteAssertion *)&v9 _init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    v7 = v5[1];
    v5[1] = v6;
  }

  return v5;
}

- (NSDictionary)expirationDateByThreadID
{
  v2 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID copy];

  return v2;
}

- (BOOL)isActiveForThreadIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID objectForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x1E695DF00] now];
  if (v6)
  {
    v8 = [v6 compare:v7] == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)getNextExpirationDate:(id *)a3 wasPurged:(BOOL *)a4
{
  v23 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID allKeys];
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID valueForKey:v12];
        if ([(UNCThreadsMuteAssertion *)self isActiveForThreadIdentifier:v12])
        {
          if (!v9 || [v13 compare:v9] == -1)
          {
            v14 = v13;

            v9 = v14;
          }
        }

        else
        {
          [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID removeObjectForKey:v12];
          *a4 = 1;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v15 = v9;
  *a3 = v9;

  v16 = *MEMORY[0x1E69E9840];
}

- (NSSet)threadIDs
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID allKeys];
  v4 = [v3 copy];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (unint64_t)hash
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 31;
  mutableExpirationDateByThreadID = self->_mutableExpirationDateByThreadID;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__UNCThreadsMuteAssertion_hash__block_invoke;
  v5[3] = &unk_1E85D7550;
  v5[4] = &v7;
  v5[5] = v6;
  [(NSMutableDictionary *)mutableExpirationDateByThreadID enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v8[3];
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __31__UNCThreadsMuteAssertion_hash__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 24);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  v7 = a3;
  *(*(*(a1 + 32) + 8) + 24) = [a2 hash] + v6 * v5;
  v8 = *(*(*(a1 + 40) + 8) + 24);
  v9 = *(*(*(a1 + 32) + 8) + 24);
  v10 = [v7 hash];

  *(*(*(a1 + 32) + 8) + 24) = v10 + v9 * v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && (v5 = v4) != 0)
  {
    v6 = v5;
    mutableExpirationDateByThreadID = self->_mutableExpirationDateByThreadID;
    v8 = v6[1];
    v9 = BSEqualDictionaries();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->_mutableExpirationDateByThreadID mutableCopy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UNCThreadsMuteAssertion;
  v4 = a3;
  [(UNCMuteAssertion *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_mutableExpirationDateByThreadID forKey:{@"expirationDateByThreadID", v5.receiver, v5.super_class}];
}

- (UNCThreadsMuteAssertion)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = UNCThreadsMuteAssertion;
  v5 = [(UNCMuteAssertion *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"expirationDateByThreadID"];
    mutableExpirationDateByThreadID = v5->_mutableExpirationDateByThreadID;
    v5->_mutableExpirationDateByThreadID = v9;
  }

  return v5;
}

@end