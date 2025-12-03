@interface _RCURLSet
+ (id)setWithURLs:(id)ls;
- (BOOL)containsURL:(id)l;
- (_RCURLSet)init;
- (id)URLs;
- (void)addURL:(id)l;
@end

@implementation _RCURLSet

+ (id)setWithURLs:(id)ls
{
  lsCopy = ls;
  v4 = objc_alloc_init(objc_opt_class());
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = lsCopy;
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

- (void)addURL:(id)l
{
  set = self->_set;
  uRLByStandardizingPath = [l URLByStandardizingPath];
  [(NSMutableSet *)set addObject:uRLByStandardizingPath];
}

- (BOOL)containsURL:(id)l
{
  uRLByStandardizingPath = [l URLByStandardizingPath];
  LOBYTE(self) = [(NSMutableSet *)self->_set containsObject:uRLByStandardizingPath];

  return self;
}

- (id)URLs
{
  v2 = [(NSMutableSet *)self->_set copy];

  return v2;
}

@end