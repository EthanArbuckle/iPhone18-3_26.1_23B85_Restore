@interface NCNotificationContentConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation NCNotificationContentConfiguration

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendUnsignedInteger:self->_bodyContentType];
  v5 = [builder appendBool:self->_revealed];
  v6 = [builder appendBool:self->_highlighted];
  v7 = [builder appendBool:self->_dateHidden];
  v8 = [builder appendObject:self->_traits];
  v9 = [builder hash];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isRevealed = [(NCNotificationContentConfiguration *)self isRevealed];
      if (isRevealed == [(NCNotificationContentConfiguration *)v5 isRevealed]&& (v7 = [(NCNotificationContentConfiguration *)self isHighlighted], v7 == [(NCNotificationContentConfiguration *)v5 isHighlighted]) && (v8 = [(NCNotificationContentConfiguration *)self bodyContentType], v8 == [(NCNotificationContentConfiguration *)v5 bodyContentType]) && (v9 = [(NCNotificationContentConfiguration *)self isDateHidden], v9 == [(NCNotificationContentConfiguration *)v5 isDateHidden]))
      {
        traits = [(NCNotificationContentConfiguration *)self traits];
        traits2 = [(NCNotificationContentConfiguration *)v5 traits];
        v10 = BSEqualObjects();
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = NCNotificationBodyContentTypeString(self->_bodyContentType);
  [v3 appendString:v4 withName:@"bodyContentType"];

  v5 = [v3 appendBool:self->_revealed withName:@"isRevealed"];
  v6 = [v3 appendBool:self->_highlighted withName:@"isHighlighted"];
  v7 = [v3 appendBool:self->_dateHidden withName:@"isDateHidden"];
  v8 = [v3 appendObject:self->_traits withName:@"traits"];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setRevealed:{-[NCNotificationContentConfiguration isRevealed](self, "isRevealed")}];
    [v4 setHighlighted:{-[NCNotificationContentConfiguration isHighlighted](self, "isHighlighted")}];
    [v4 setDateHidden:{-[NCNotificationContentConfiguration isDateHidden](self, "isDateHidden")}];
    [v4 setBodyContentType:{-[NCNotificationContentConfiguration bodyContentType](self, "bodyContentType")}];
    traits = [(NCNotificationContentConfiguration *)self traits];
    [v4 setTraits:traits];
  }

  return v4;
}

@end