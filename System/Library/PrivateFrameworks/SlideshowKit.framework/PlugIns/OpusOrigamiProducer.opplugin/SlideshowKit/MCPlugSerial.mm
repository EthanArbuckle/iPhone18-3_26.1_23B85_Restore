@interface MCPlugSerial
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
- (MCPlugSerial)initWithImprint:(id)imprint andMontage:(id)montage;
- (NSDictionary)transitionAttributes;
- (id)imprint;
- (id)transitionAttributeForKey:(id)key;
- (void)_copySelfToSnapshot:(id)snapshot;
- (void)addTransitionAttributes:(id)attributes;
- (void)demolish;
- (void)setTransitionAttribute:(id)attribute forKey:(id)key;
- (void)setTransitionAttributes:(id)attributes;
@end

@implementation MCPlugSerial

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  if ([key isEqualToString:@"transition"])
  {
    return [NSSet setWithObjects:@"transitionID", @"transitionDuration", @"transitionAttributes", 0];
  }

  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___MCPlugSerial;
  return objc_msgSendSuper2(&v6, "keyPathsForValuesAffectingValueForKey:", key);
}

- (MCPlugSerial)initWithImprint:(id)imprint andMontage:(id)montage
{
  v10.receiver = self;
  v10.super_class = MCPlugSerial;
  v5 = [(MCPlug *)&v10 initWithImprint:imprint andMontage:montage];
  if (v5)
  {
    unsignedIntegerValue = [imprint objectForKey:@"index"];
    if (unsignedIntegerValue)
    {
      unsignedIntegerValue = [unsignedIntegerValue unsignedIntegerValue];
    }

    v5->mIndex = unsignedIntegerValue;
    v5->mTransitionID = [imprint objectForKey:@"transitionID"];
    v7 = [imprint objectForKey:@"transitionDuration"];
    if (v7)
    {
      [v7 doubleValue];
    }

    else
    {
      v8 = 0.0;
    }

    v5->mTransitionDuration = v8;
    v5->mTransitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:{objc_msgSend(imprint, "objectForKey:", @"transitionAttributes"}];
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
  imprint = [(MCPlug *)&v7 imprint];
  if (self->mIndex)
  {
    [imprint setObject:+[NSNumber numberWithUnsignedInteger:](NSNumber forKey:{"numberWithUnsignedInteger:"), @"index"}];
  }

  mTransitionID = self->mTransitionID;
  if (mTransitionID)
  {
    [imprint setObject:mTransitionID forKey:@"transitionID"];
  }

  if (self->mTransitionDuration != 0.0)
  {
    [imprint setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:"), @"transitionDuration"}];
  }

  mTransitionAttributes = self->mTransitionAttributes;
  if (mTransitionAttributes)
  {
    [imprint setObject:mTransitionAttributes forKey:@"transitionAttributes"];
  }

  return imprint;
}

- (id)transitionAttributeForKey:(id)key
{
  if ([(MCObject *)self isSnapshot])
  {
    mTransitionAttributes = self->mTransitionAttributes;

    return [(NSMutableDictionary *)mTransitionAttributes objectForKey:key];
  }

  else
  {
    objc_sync_enter(self);
    v7 = [(NSMutableDictionary *)self->mTransitionAttributes objectForKey:key];
    objc_sync_exit(self);
    return v7;
  }
}

- (void)setTransitionAttribute:(id)attribute forKey:(id)key
{
  [(MCPlugSerial *)self willChangeValueForKey:@"transitionAttributes"];
  objc_sync_enter(self);
  mTransitionAttributes = self->mTransitionAttributes;
  if (attribute)
  {
    if (mTransitionAttributes)
    {
      [(NSMutableDictionary *)mTransitionAttributes setObject:attribute forKey:key];
    }

    else
    {
      self->mTransitionAttributes = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{attribute, key, 0}];
    }
  }

  else if (mTransitionAttributes)
  {
    [(NSMutableDictionary *)mTransitionAttributes removeObjectForKey:key];
  }

  objc_sync_exit(self);

  [(MCPlugSerial *)self didChangeValueForKey:@"transitionAttributes"];
}

- (void)addTransitionAttributes:(id)attributes
{
  if (attributes && [attributes count])
  {
    [(MCPlugSerial *)self willChangeValueForKey:@"transitionAttributes"];
    objc_sync_enter(self);
    mTransitionAttributes = self->mTransitionAttributes;
    if (mTransitionAttributes)
    {
      [(NSMutableDictionary *)mTransitionAttributes addEntriesFromDictionary:attributes];
    }

    else
    {
      self->mTransitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:attributes];
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

- (void)setTransitionAttributes:(id)attributes
{
  if (self->mTransitionAttributes != attributes)
  {
    objc_sync_enter(self);

    self->mTransitionAttributes = 0;
    if (attributes)
    {
      self->mTransitionAttributes = [[NSMutableDictionary alloc] initWithDictionary:attributes];
    }

    objc_sync_exit(self);
  }
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  objc_sync_enter(self);
  v7.receiver = self;
  v7.super_class = MCPlugSerial;
  [(MCPlug *)&v7 _copySelfToSnapshot:snapshot];
  *(snapshot + 12) = self->mIndex;
  mTransitionID = self->mTransitionID;
  if (mTransitionID)
  {
    *(snapshot + 13) = [(NSString *)mTransitionID copy];
  }

  *(snapshot + 14) = *&self->mTransitionDuration;
  mTransitionAttributes = self->mTransitionAttributes;
  if (mTransitionAttributes)
  {
    *(snapshot + 11) = [(NSMutableDictionary *)mTransitionAttributes copy];
  }

  objc_sync_exit(self);
}

@end