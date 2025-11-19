@interface _RCURLSet
+ (id)setWithURLs:(id)a3;
- (BOOL)containsURL:(id)a3;
- (_RCURLSet)init;
- (id)URLs;
- (void)addURL:(id)a3;
@end

@implementation _RCURLSet

+ (id)setWithURLs:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addURL:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (_RCURLSet)init
{
  v6.receiver = self;
  v6.super_class = _RCURLSet;
  v2 = [(_RCURLSet *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    set = v2->_set;
    v2->_set = v3;
  }

  return v2;
}

- (void)addURL:(id)a3
{
  set = self->_set;
  v4 = [a3 URLByStandardizingPath];
  [(NSMutableSet *)set addObject:v4];
}

- (BOOL)containsURL:(id)a3
{
  v4 = [a3 URLByStandardizingPath];
  LOBYTE(self) = [(NSMutableSet *)self->_set containsObject:v4];

  return self;
}

- (id)URLs
{
  v2 = [(NSMutableSet *)self->_set copy];

  return v2;
}

@end