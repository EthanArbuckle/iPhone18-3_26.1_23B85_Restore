@interface MPAnimationPathCombo
+ (id)animationPath;
- (MPAnimationPathCombo)init;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (void)cleanup;
- (void)copyAnimationPaths:(id)a3;
- (void)dealloc;
- (void)removeAnimationPathForKey:(id)a3;
- (void)setAnimationPath:(id)a3;
- (void)setAnimationPath:(id)a3 forKey:(id)a4;
- (void)setKey:(id)a3;
- (void)setOperation:(id)a3;
@end

@implementation MPAnimationPathCombo

+ (id)animationPath
{
  v2 = objc_alloc_init(MPAnimationPathCombo);

  return v2;
}

- (MPAnimationPathCombo)init
{
  v4.receiver = self;
  v4.super_class = MPAnimationPathCombo;
  v2 = [(MPAnimationPath *)&v4 init];
  if (v2)
  {
    v2->_animationPaths = objc_alloc_init(NSMutableDictionary);
    v2->_key = 0;
    v2->_operation = 0;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = MPAnimationPathCombo;
  v4 = [(MPAnimationPath *)&v6 copyWithZone:a3];
  [v4 copyAnimationPaths:self->_animationPaths];
  [v4 setOperation:{-[NSString copy](self->_operation, "copy")}];
  [v4 setKey:{-[NSString copy](self->_key, "copy")}];
  return v4;
}

- (void)dealloc
{
  self->_animationPaths = 0;

  v3.receiver = self;
  v3.super_class = MPAnimationPathCombo;
  [(MPAnimationPath *)&v3 dealloc];
}

- (void)setAnimationPath:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v7 = [(MPAnimationPathCombo *)self animationPathForKey:a4];
    if (v7)
    {
      v8 = v7;
      v9 = [-[MPAnimationPath parentDocument](self "parentDocument")];
      if (v9)
      {
        [objc_msgSend(v9 prepareWithInvocationTarget:{self), "setAnimationPath:forKey:", v8, a4}];
      }

      [v8 setParent:0];
      [v8 setAnimationPath:0];
    }

    [a3 setParent:self];
    [(NSMutableDictionary *)self->_animationPaths setObject:a3 forKey:a4];
    animationPath = self->super._animationPath;
    if (animationPath)
    {
      [(MCAnimationPath *)animationPath removeAnimationPathForKey:a4];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v12 = off_1A4CB0;
      if ((isKindOfClass & 1) == 0)
      {
        v12 = off_1A4CB8;
      }

      v13 = [(__objc2_class *)*v12 animationPathWithKey:a4];
      [(MCAnimationPath *)self->super._animationPath addAnimationPath:v13];

      [a3 setAnimationPath:v13];
    }
  }

  else
  {

    [(MPAnimationPathCombo *)self removeAnimationPathForKey:a4];
  }
}

- (void)removeAnimationPathForKey:(id)a3
{
  v5 = [(MPAnimationPathCombo *)self animationPathForKey:?];
  v6 = [-[MPAnimationPath parentDocument](self "parentDocument")];
  if (v6)
  {
    [objc_msgSend(v6 prepareWithInvocationTarget:{self), "setAnimationPath:forKey:", v5, a3}];
  }

  animationPath = self->super._animationPath;
  if (animationPath)
  {
    [(MCAnimationPath *)animationPath removeAnimationPathForKey:a3];
    [v5 setAnimationPath:0];
  }

  [v5 setParent:0];
  animationPaths = self->_animationPaths;

  [(NSMutableDictionary *)animationPaths removeObjectForKey:a3];
}

- (void)setOperation:(id)a3
{
  operation = self->_operation;
  if (operation)
  {

    self->_operation = 0;
  }

  self->_operation = [a3 copy];
  animationPath = self->super._animationPath;
  if (animationPath)
  {

    [(MCAnimationPath *)animationPath setCombineOperation:a3];
  }
}

- (NSString)key
{
  if ([-[MPAnimationPath parent](self "parent")])
  {
    v4.receiver = self;
    v4.super_class = MPAnimationPathCombo;
    return [(MPAnimationPath *)&v4 key];
  }

  else
  {

    return [(MPAnimationPathCombo *)self key];
  }
}

- (void)setKey:(id)a3
{
  if (([-[MPAnimationPath parent](self "parent")] & 1) == 0)
  {
    key = self->_key;
    if (key)
    {

      self->_key = 0;
    }

    v6 = [a3 copy];
    self->_key = v6;
    animationPath = self->super._animationPath;
    if (animationPath)
    {

      [(MCAnimationPath *)animationPath setKey:v6];
    }
  }
}

- (void)cleanup
{
  v3 = [(NSMutableDictionary *)self->_animationPaths allKeys];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(MPAnimationPathCombo *)self removeAnimationPathForKey:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)setAnimationPath:(id)a3
{
  v27.receiver = self;
  v27.super_class = MPAnimationPathCombo;
  [(MPAnimationPath *)&v27 setAnimationPath:a3];
  if (self->super._animationPath)
  {
    [(MCAnimationPath *)self->super._animationPath setCombineOperation:[(MPAnimationPathCombo *)self operation]];
    if (([-[MPAnimationPath parent](self "parent")] & 1) == 0)
    {
      [(MCAnimationPath *)self->super._animationPath setKey:[(MPAnimationPathCombo *)self key]];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_animationPaths;
    v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v24;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v24 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          v9 = [(NSMutableDictionary *)self->_animationPaths objectForKey:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = off_1A4CB0;
          }

          else
          {
            v10 = off_1A4CB8;
          }

          v11 = [(__objc2_class *)*v10 animationPathWithKey:v8];
          [v9 setAnimationPath:v11];
          [(MCAnimationPath *)self->super._animationPath addAnimationPath:v11];
        }

        v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    animationPaths = self->_animationPaths;
    v13 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; j = j + 1)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(animationPaths);
          }

          v17 = *(*(&v19 + 1) + 8 * j);
          [-[NSMutableDictionary objectForKey:](self->_animationPaths objectForKey:{v17), "setAnimationPath:", 0}];
          [(MCAnimationPath *)self->super._animationPath removeAnimationPathForKey:v17];
        }

        v14 = [(NSMutableDictionary *)animationPaths countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v14);
    }
  }
}

- (void)copyAnimationPaths:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [objc_msgSend(a3 objectForKey:{v9), "copy"}];
        [(MPAnimationPathCombo *)self setAnimationPath:v10 forKey:v9];
      }

      v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

@end