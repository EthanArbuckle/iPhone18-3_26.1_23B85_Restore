@interface NCNotificationContentConfiguration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation NCNotificationContentConfiguration

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendUnsignedInteger:self->_bodyContentType];
  v5 = [v3 appendBool:self->_revealed];
  v6 = [v3 appendBool:self->_highlighted];
  v7 = [v3 appendBool:self->_dateHidden];
  v8 = [v3 appendObject:self->_traits];
  v9 = [v3 hash];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(NCNotificationContentConfiguration *)self isRevealed];
      if (v6 == [(NCNotificationContentConfiguration *)v5 isRevealed]&& (v7 = [(NCNotificationContentConfiguration *)self isHighlighted], v7 == [(NCNotificationContentConfiguration *)v5 isHighlighted]) && (v8 = [(NCNotificationContentConfiguration *)self bodyContentType], v8 == [(NCNotificationContentConfiguration *)v5 bodyContentType]) && (v9 = [(NCNotificationContentConfiguration *)self isDateHidden], v9 == [(NCNotificationContentConfiguration *)v5 isDateHidden]))
      {
        v12 = [(NCNotificationContentConfiguration *)self traits];
        v13 = [(NCNotificationContentConfiguration *)v5 traits];
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
  v9 = [v3 build];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    [v4 setRevealed:{-[NCNotificationContentConfiguration isRevealed](self, "isRevealed")}];
    [v4 setHighlighted:{-[NCNotificationContentConfiguration isHighlighted](self, "isHighlighted")}];
    [v4 setDateHidden:{-[NCNotificationContentConfiguration isDateHidden](self, "isDateHidden")}];
    [v4 setBodyContentType:{-[NCNotificationContentConfiguration bodyContentType](self, "bodyContentType")}];
    v5 = [(NCNotificationContentConfiguration *)self traits];
    [v4 setTraits:v5];
  }

  return v4;
}

@end