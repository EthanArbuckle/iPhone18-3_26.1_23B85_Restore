@interface MPTransition
+ (MPTransition)transitionWithTransitionID:(id)d;
- (MPTransition)init;
- (MPTransition)initWithTransitionID:(id)d;
- (double)findMaxDuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)formattedAttributes;
- (id)parentDocument;
- (id)transitionAttributeForKey:(id)key;
- (id)transitionAttributes;
- (void)applyFormattedAttributes;
- (void)copyAttribures:(id)attribures;
- (void)copyVars:(id)vars;
- (void)dealloc;
- (void)setDuration:(double)duration;
- (void)setParent:(id)parent;
- (void)setPresetID:(id)d;
- (void)setTransitionAttribute:(id)attribute forKey:(id)key;
- (void)setTransitionAttributes:(id)attributes;
- (void)setTransitionID:(id)d;
@end

@implementation MPTransition

+ (MPTransition)transitionWithTransitionID:(id)d
{
  v3 = [[self alloc] initWithTransitionID:d];

  return v3;
}

- (MPTransition)initWithTransitionID:(id)d
{
  v4 = [(MPTransition *)self init];
  if (v4)
  {
    v4->_transitionID = [d copy];
    v4->_isRandom = [d isEqualToString:@"Random"];
    v4->_presetID = [@"Default" copy];
    if ([+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")])
    {
      v4->_randomSeed = arc4random();
    }

    [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
    v4->_duration = v5;
  }

  return v4;
}

- (MPTransition)init
{
  v3.receiver = self;
  v3.super_class = MPTransition;
  result = [(MPTransition *)&v3 init];
  if (result)
  {
    result->_attributes = 0;
    result->_duration = 0.0;
    result->_isRandom = 0;
    result->_randomSeed = -1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 copyVars:self];
  [v4 copyAttribures:self->_attributes];
  return v4;
}

- (id)description
{
  v3 = [[[NSString stringWithFormat:?]stringByAppendingFormat:@"\t                 Transition ID: %@\n", [(MPTransition *)self transitionID]], "stringByAppendingFormat:", @"\t                     Preset ID: %@\n", [(MPTransition *)self presetID]];
  [(MPTransition *)self duration];
  return [[(NSString *)v3 stringByAppendingFormat:@"\t           Transition Duration: %f\n" stringByAppendingFormat:"stringByAppendingFormat:", @"\t                    Attributes: %@\n", [(MPTransition *)self transitionAttributes]];
}

- (void)dealloc
{
  self->_attributes = 0;

  self->_transitionID = 0;
  self->_presetID = 0;
  v3.receiver = self;
  v3.super_class = MPTransition;
  [(MPTransition *)&v3 dealloc];
}

- (void)setTransitionID:(id)d
{
  transitionID = self->_transitionID;
  if (transitionID)
  {

    self->_transitionID = 0;
  }

  self->_transitionID = [d copy];
  if (self->_randomSeed == -1 && [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")])
  {
    self->_randomSeed = arc4random();
  }

  -[MPTransition setIsRandom:](self, "setIsRandom:", [d isEqualToString:@"Random"]);
  [(MPTransition *)self setPresetID:@"Default"];
  if (self->_parent)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [self->_parent plug] && objc_msgSend(self->_parent, "isTransitionConnected"))
    {
      [objc_msgSend(self->_parent "plug")];
    }

    else if (self->_parent)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([self->_parent container])
        {
          [objc_msgSend(self->_parent "container")];
        }
      }
    }
  }

  [(MPTransition *)self applyFormattedAttributes];
}

- (void)setPresetID:(id)d
{
  presetID = self->_presetID;
  if (presetID)
  {

    self->_presetID = 0;
  }

  self->_presetID = [d copy];
  attributes = self->_attributes;
  if (attributes)
  {
    [(NSMutableDictionary *)attributes removeAllObjects];
  }

  [(MPTransition *)self applyFormattedAttributes];
}

- (void)setDuration:(double)duration
{
  if (duration >= 0.0)
  {
    durationCopy = duration;
    v5 = [objc_msgSend(-[MPTransition parentContainer](self "parentContainer")];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ([objc_msgSend(v5 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & 1) == 0 && (isKindOfClass)
    {
      [(MPTransition *)self findMaxDuration];
      if (v7 != -1.0 && v7 < durationCopy)
      {
        durationCopy = v7;
      }
    }

    [(MPTransition *)self duration];
    v10 = v9;
    self->_duration = durationCopy;
    parent = self->_parent;
    if (((parent != 0) & isKindOfClass) == 1)
    {
      [(MPTransition *)self duration];
      [parent adjustPhasesWithDuration:?];
    }

    v12 = self->_parent;
    if (isKindOfClass)
    {
      if ([v12 parentLayer])
      {
        parentLayer = [self->_parent parentLayer];
        [objc_msgSend(self->_parent "parentLayer")];
        [parentLayer setDuration:v14 - (durationCopy - v10)];
      }

      v15 = self->_parent;
      if (v15 && [v15 plug] && objc_msgSend(self->_parent, "isTransitionConnected"))
      {
        plug = [self->_parent plug];

        [plug setTransitionDuration:durationCopy];
      }
    }

    else if (v12 && [v12 container])
    {
      container = [self->_parent container];

      [container setInitialTransitionDuration:durationCopy];
    }
  }
}

- (id)transitionAttributes
{
  result = self->_attributes;
  if (!result)
  {
    v4 = +[MPTransitionManager sharedManager];
    transitionID = [(MPTransition *)self transitionID];
    presetID = [(MPTransition *)self presetID];

    return [v4 attributesForTransitionID:transitionID andPresetID:presetID];
  }

  return result;
}

- (void)setTransitionAttributes:(id)attributes
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  self->_attributes = [attributes mutableCopy];

  [(MPTransition *)self applyFormattedAttributes];
}

- (id)transitionAttributeForKey:(id)key
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
  }

  result = [(NSMutableDictionary *)attributes objectForKey:key];
  if (!result)
  {
    result = [+[MPUtilities defaultAttributesForMPTransition:](MPUtilities defaultAttributesForMPTransition:{self), "objectForKey:", key}];
    if (result)
    {

      return [(MPTransition *)self convertMPAttributeToMCAttribute:result withKey:key];
    }
  }

  return result;
}

- (void)setTransitionAttribute:(id)attribute forKey:(id)key
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = [objc_msgSend(+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setObject:attribute forKey:key];

  [(MPTransition *)self applyFormattedAttributes];
}

- (double)findMaxDuration
{
  parent = self->_parent;
  if (!parent)
  {
    return -1.0;
  }

  v4 = [objc_msgSend(parent "parentLayer")];
  if ([self->_parent index])
  {
    v5 = [v4 objectAtIndex:{objc_msgSend(self->_parent, "index") - 1}];
  }

  else
  {
    v5 = 0;
  }

  v7 = [self->_parent index] + 1;
  v8 = [v4 count];
  v9 = self->_parent;
  if (v7 == v8)
  {
    [v9 duration];
    v6 = v10;
  }

  else
  {
    v11 = [v4 objectAtIndex:{objc_msgSend(v9, "index") + 1}];
    [self->_parent duration];
    v6 = v12;
    if (v11)
    {
      [v11 duration];
      if (v6 >= v13)
      {
        v6 = v13;
      }

      if ([v11 transition])
      {
        [v11 duration];
        v15 = v14;
        [objc_msgSend(v11 "transition")];
        v17 = v15 - v16;
        if (v6 >= v17)
        {
          v6 = v17;
        }
      }
    }
  }

  if (v5)
  {
    if ([v5 transition])
    {
      [self->_parent duration];
      v19 = v18;
      [objc_msgSend(v5 "transition")];
      v21 = v19 - v20;
      if (v6 >= v21)
      {
        return v21;
      }
    }
  }

  return v6;
}

- (void)copyVars:(id)vars
{
  self->_duration = *(vars + 5);
  transitionID = self->_transitionID;
  if (transitionID)
  {

    self->_transitionID = 0;
  }

  self->_transitionID = [*(vars + 3) copy];
  presetID = self->_presetID;
  if (presetID)
  {

    self->_transitionID = 0;
  }

  self->_presetID = [*(vars + 4) copy];
  self->_isRandom = *(vars + 48);
}

- (void)copyAttribures:(id)attribures
{
  attributes = self->_attributes;
  if (attributes)
  {
  }

  self->_attributes = [[NSMutableDictionary alloc] initWithDictionary:attribures copyItems:1];
}

- (id)parentDocument
{
  v2 = [-[MPTransition parentContainer](self "parentContainer")];

  return [v2 parentDocument];
}

- (void)setParent:(id)parent
{
  if (parent && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A transition may one have one parent.  Please remove it first.  This is unsupported." userInfo:0]);
  }

  self->_parent = parent;
  if (parent)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [self->_parent plug])
    {
      if ([self->_parent isTransitionConnected])
      {
        [objc_msgSend(self->_parent "plug")];
        [(MPTransition *)self duration];
        [objc_msgSend(self->_parent "plug")];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || ![self->_parent container])
      {
        return;
      }

      [objc_msgSend(self->_parent "container")];
      [(MPTransition *)self duration];
      [objc_msgSend(self->_parent "container")];
    }

    [(MPTransition *)self applyFormattedAttributes];
  }
}

- (id)formattedAttributes
{
  isRandom = [(MPTransition *)self isRandom];
  if (self->_attributes)
  {
    goto LABEL_2;
  }

  if ([(MPTransition *)self isRandom])
  {
    return 0;
  }

  if (self->_attributes)
  {
LABEL_2:
    v4 = [[NSMutableDictionary alloc] initWithDictionary:self->_attributes];
  }

  else
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = v4;
  if ((isRandom & 1) == 0)
  {
    [v4 setObject:-[MPTransition presetID](self forKey:{"presetID"), @"PresetID"}];
  }

  if ((self->_randomSeed & 0x8000000000000000) == 0)
  {
    [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:"), @"RandomSeed"}];
  }

  return v5;
}

- (void)applyFormattedAttributes
{
  v3 = [-[MPTransition _transitionAttributes](self "_transitionAttributes")];
  if (!v3)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
  }

  v4 = v3;
  [v3 setObject:-[MPTransition presetID](self forKey:{"presetID"), @"PresetID"}];
  if ((self->_randomSeed & 0x8000000000000000) == 0)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:"), @"RandomSeed"}];
  }

  if (self->_isRandom)
  {
    [v4 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", 1), @"isRandom"}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [self->_parent plug])
  {
    [objc_msgSend(self->_parent "plug")];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [self->_parent container])
    {
      [objc_msgSend(self->_parent "container")];
    }
  }
}

@end