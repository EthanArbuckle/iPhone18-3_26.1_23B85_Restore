@interface MPTransition
+ (MPTransition)transitionWithTransitionID:(id)a3;
- (MPTransition)init;
- (MPTransition)initWithTransitionID:(id)a3;
- (double)findMaxDuration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)formattedAttributes;
- (id)parentDocument;
- (id)transitionAttributeForKey:(id)a3;
- (id)transitionAttributes;
- (void)applyFormattedAttributes;
- (void)copyAttribures:(id)a3;
- (void)copyVars:(id)a3;
- (void)dealloc;
- (void)setDuration:(double)a3;
- (void)setParent:(id)a3;
- (void)setPresetID:(id)a3;
- (void)setTransitionAttribute:(id)a3 forKey:(id)a4;
- (void)setTransitionAttributes:(id)a3;
- (void)setTransitionID:(id)a3;
@end

@implementation MPTransition

+ (MPTransition)transitionWithTransitionID:(id)a3
{
  v3 = [[a1 alloc] initWithTransitionID:a3];

  return v3;
}

- (MPTransition)initWithTransitionID:(id)a3
{
  v4 = [(MPTransition *)self init];
  if (v4)
  {
    v4->_transitionID = [a3 copy];
    v4->_isRandom = [a3 isEqualToString:@"Random"];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)setTransitionID:(id)a3
{
  transitionID = self->_transitionID;
  if (transitionID)
  {

    self->_transitionID = 0;
  }

  self->_transitionID = [a3 copy];
  if (self->_randomSeed == -1 && [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")])
  {
    self->_randomSeed = arc4random();
  }

  -[MPTransition setIsRandom:](self, "setIsRandom:", [a3 isEqualToString:@"Random"]);
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

- (void)setPresetID:(id)a3
{
  presetID = self->_presetID;
  if (presetID)
  {

    self->_presetID = 0;
  }

  self->_presetID = [a3 copy];
  attributes = self->_attributes;
  if (attributes)
  {
    [(NSMutableDictionary *)attributes removeAllObjects];
  }

  [(MPTransition *)self applyFormattedAttributes];
}

- (void)setDuration:(double)a3
{
  if (a3 >= 0.0)
  {
    v3 = a3;
    v5 = [objc_msgSend(-[MPTransition parentContainer](self "parentContainer")];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ([objc_msgSend(v5 documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}] & 1) == 0 && (isKindOfClass)
    {
      [(MPTransition *)self findMaxDuration];
      if (v7 != -1.0 && v7 < v3)
      {
        v3 = v7;
      }
    }

    [(MPTransition *)self duration];
    v10 = v9;
    self->_duration = v3;
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
        v13 = [self->_parent parentLayer];
        [objc_msgSend(self->_parent "parentLayer")];
        [v13 setDuration:v14 - (v3 - v10)];
      }

      v15 = self->_parent;
      if (v15 && [v15 plug] && objc_msgSend(self->_parent, "isTransitionConnected"))
      {
        v16 = [self->_parent plug];

        [v16 setTransitionDuration:v3];
      }
    }

    else if (v12 && [v12 container])
    {
      v17 = [self->_parent container];

      [v17 setInitialTransitionDuration:v3];
    }
  }
}

- (id)transitionAttributes
{
  result = self->_attributes;
  if (!result)
  {
    v4 = +[MPTransitionManager sharedManager];
    v5 = [(MPTransition *)self transitionID];
    v6 = [(MPTransition *)self presetID];

    return [v4 attributesForTransitionID:v5 andPresetID:v6];
  }

  return result;
}

- (void)setTransitionAttributes:(id)a3
{
  attributes = self->_attributes;
  if (attributes)
  {

    self->_attributes = 0;
  }

  self->_attributes = [a3 mutableCopy];

  [(MPTransition *)self applyFormattedAttributes];
}

- (id)transitionAttributeForKey:(id)a3
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = [+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
  }

  result = [(NSMutableDictionary *)attributes objectForKey:a3];
  if (!result)
  {
    result = [+[MPUtilities defaultAttributesForMPTransition:](MPUtilities defaultAttributesForMPTransition:{self), "objectForKey:", a3}];
    if (result)
    {

      return [(MPTransition *)self convertMPAttributeToMCAttribute:result withKey:a3];
    }
  }

  return result;
}

- (void)setTransitionAttribute:(id)a3 forKey:(id)a4
{
  attributes = self->_attributes;
  if (!attributes)
  {
    attributes = [objc_msgSend(+[MPTransitionManager sharedManager](MPTransitionManager "sharedManager")];
    self->_attributes = attributes;
  }

  [(NSMutableDictionary *)attributes setObject:a3 forKey:a4];

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

- (void)copyVars:(id)a3
{
  self->_duration = *(a3 + 5);
  transitionID = self->_transitionID;
  if (transitionID)
  {

    self->_transitionID = 0;
  }

  self->_transitionID = [*(a3 + 3) copy];
  presetID = self->_presetID;
  if (presetID)
  {

    self->_transitionID = 0;
  }

  self->_presetID = [*(a3 + 4) copy];
  self->_isRandom = *(a3 + 48);
}

- (void)copyAttribures:(id)a3
{
  attributes = self->_attributes;
  if (attributes)
  {
  }

  self->_attributes = [[NSMutableDictionary alloc] initWithDictionary:a3 copyItems:1];
}

- (id)parentDocument
{
  v2 = [-[MPTransition parentContainer](self "parentContainer")];

  return [v2 parentDocument];
}

- (void)setParent:(id)a3
{
  if (a3 && self->_parent)
  {
    objc_exception_throw([NSException exceptionWithName:@"ManyToOneException" reason:@"A transition may one have one parent.  Please remove it first.  This is unsupported." userInfo:0]);
  }

  self->_parent = a3;
  if (a3)
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
  v3 = [(MPTransition *)self isRandom];
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
  if ((v3 & 1) == 0)
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