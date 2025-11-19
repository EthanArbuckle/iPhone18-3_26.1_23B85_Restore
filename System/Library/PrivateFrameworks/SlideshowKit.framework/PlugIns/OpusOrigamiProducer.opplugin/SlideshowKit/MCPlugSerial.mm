@interface MCPlugSerial
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
- (MCPlugSerial)initWithImprint:(id)a3 andMontage:(id)a4;
- (NSDictionary)transitionAttributes;
- (id)imprint;
- (id)transitionAttributeForKey:(id)a3;
- (void)_copySelfToSnapshot:(id)a3;
- (void)addTransitionAttributes:(id)a3;
- (void)demolish;
- (void)setTransitionAttribute:(id)a3 forKey:(id)a4;
- (void)setTransitionAttributes:(id)a3;
@end

@implementation MCPlugSerial

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  if ([a3 isEqualToString:@"transition"])
  {
    return [NSSet setWithObjects:@"transitionID", @"transitionDuration", @"transitionAttributes", 0];
  }

  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___MCPlugSerial;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", a3);
}

- (MCPlugSerial)initWithImprint:(id)a3 andMontage:(id)a4
{
  v10.receiver = self;
  v10.super_class = MCPlugSerial;
  v5 = [(MCPlug *)&v10 initWithImprint:a3 andMontage:a4];
  if (v5)
  {
    v6 = [a3 objectForKey:@"index"];
    if (v6)
    {
      v6 = [v6 unsignedIntegerValue];
    }

    v5->mIndex = v6;
    v5->mTransitionID = [a3 objectForKey:@"transitionID"];
    v7 = [a3 objectForKey:@"transitionDuration"];
    if (v7)
    {
      [v7 doubleValue];
    }

    else
    {
      v8 = 0.0;
    }

    v5->mTransitionDuration = v8;
    v5->mTransitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(a3, "objectForKey:", @"transitionAttributes"}];
  }

  return v5;
}

- (void)demolish
{
  self->mTransitionID = 0;

  self->mTransitionAttributes = 0;
  self->mSupercontainer = 0;
  v3.receiver = self;
  v3.super_class = MCPlugSerial;
  [(MCPlug *)&v3 demolish];
}

- (id)imprint
{
  v7.receiver = self;
  v7.super_class = MCPlugSerial;
  v3 = [(MCPlug *)&v7 imprint];
  if (self->mIndex)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:"), @"index"}];
  }

  mTransitionID = self->mTransitionID;
  if (mTransitionID)
  {
    [v3 setObject:mTransitionID forKey:@"transitionID"];
  }

  if (self->mTransitionDuration != 0.0)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"transitionDuration"}];
  }

  mTransitionAttributes = self->mTransitionAttributes;
  if (mTransitionAttributes)
  {
    [v3 setObject:mTransitionAttributes forKey:@"transitionAttributes"];
  }

  return v3;
}

- (id)transitionAttributeForKey:(id)a3
{
  if ([(MCObject *)self isSnapshot])
  {
    mTransitionAttributes = self->mTransitionAttributes;

    return [(NSMutableDictionary *)mTransitionAttributes objectForKey:a3];
  }

  else
  {
    objc_sync_enter(self);
    v7 = [(NSMutableDictionary *)self->mTransitionAttributes objectForKey:a3];
    objc_sync_exit(self);
    return v7;
  }
}

- (void)setTransitionAttribute:(id)a3 forKey:(id)a4
{
  [(MCPlugSerial *)self willChangeValueForKey:@"transitionAttributes"];
  objc_sync_enter(self);
  mTransitionAttributes = self->mTransitionAttributes;
  if (a3)
  {
    if (mTransitionAttributes)
    {
      [(NSMutableDictionary *)mTransitionAttributes setObject:a3 forKey:a4];
    }

    else
    {
      self->mTransitionAttributes = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{a3, a4, 0}];
    }
  }

  else if (mTransitionAttributes)
  {
    [(NSMutableDictionary *)mTransitionAttributes removeObjectForKey:a4];
  }

  objc_sync_exit(self);

  [(MCPlugSerial *)self didChangeValueForKey:@"transitionAttributes"];
}

- (void)addTransitionAttributes:(id)a3
{
  if (a3 && [a3 count])
  {
    [(MCPlugSerial *)self willChangeValueForKey:@"transitionAttributes"];
    objc_sync_enter(self);
    mTransitionAttributes = self->mTransitionAttributes;
    if (mTransitionAttributes)
    {
      [(NSMutableDictionary *)mTransitionAttributes addEntriesFromDictionary:a3];
    }

    else
    {
      self->mTransitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:a3];
    }

    objc_sync_exit(self);

    [(MCPlugSerial *)self didChangeValueForKey:@"transitionAttributes"];
  }
}

- (NSDictionary)transitionAttributes
{
  if ([(MCObject *)self isSnapshot])
  {
    return &self->mTransitionAttributes->super;
  }

  objc_sync_enter(self);
  v3 = [NSDictionary dictionaryWithDictionary:self->mTransitionAttributes];
  objc_sync_exit(self);
  return v3;
}

- (void)setTransitionAttributes:(id)a3
{
  if (self->mTransitionAttributes != a3)
  {
    objc_sync_enter(self);

    self->mTransitionAttributes = 0;
    if (a3)
    {
      self->mTransitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:a3];
    }

    objc_sync_exit(self);
  }
}

- (void)_copySelfToSnapshot:(id)a3
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = MCPlugSerial;
  [(MCPlug *)&v7 _copySelfToSnapshot:a3];
  *(a3 + 12) = self->mIndex;
  mTransitionID = self->mTransitionID;
  if (mTransitionID)
  {
    *(a3 + 13) = [(NSString *)mTransitionID copy];
  }

  *(a3 + 14) = *&self->mTransitionDuration;
  mTransitionAttributes = self->mTransitionAttributes;
  if (mTransitionAttributes)
  {
    *(a3 + 11) = [(NSMutableDictionary *)mTransitionAttributes copy];
  }

  objc_sync_exit(self);
}

@end