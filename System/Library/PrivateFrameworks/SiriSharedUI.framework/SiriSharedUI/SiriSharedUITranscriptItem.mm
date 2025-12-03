@interface SiriSharedUITranscriptItem
+ (id)transcriptItemWithAceObject:(id)object;
- (BOOL)isAnnouncementItem;
- (BOOL)isConversationItem;
- (BOOL)isHintItem;
- (CGRect)previousFrame;
- (SiriSharedUITranscriptItem)initWithAceObject:(id)object;
- (id)description;
- (int64_t)platterCategory;
@end

@implementation SiriSharedUITranscriptItem

+ (id)transcriptItemWithAceObject:(id)object
{
  objectCopy = object;
  v5 = [[self alloc] initWithAceObject:objectCopy];

  return v5;
}

- (SiriSharedUITranscriptItem)initWithAceObject:(id)object
{
  objectCopy = object;
  v9.receiver = self;
  v9.super_class = SiriSharedUITranscriptItem;
  v6 = [(SiriSharedUITranscriptItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_aceObject, object);
    *&v7->_shouldBeExposed = 1;
  }

  return v7;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = SiriSharedUITranscriptItem;
  v3 = [(SiriSharedUITranscriptItem *)&v8 description];
  v4 = objc_opt_class();
  viewController = [(SiriSharedUITranscriptItem *)self viewController];
  v6 = [v3 stringByAppendingFormat:@" aceObject=%@, viewController=%@", v4, viewController];

  return v6;
}

- (BOOL)isConversationItem
{
  aceObject = [(SiriSharedUITranscriptItem *)self aceObject];
  viewController = [(SiriSharedUITranscriptItem *)self viewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemType = [aceObject itemType];
    [itemType isEqualToString:*MEMORY[0x277D47C58]];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemType2 = [aceObject itemType];
    [itemType2 isEqualToString:*MEMORY[0x277D47C60]];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([aceObject itemType], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D47C48]), v7, (v8) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(aceObject, "itemType"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x277D47C68]), v9, (v10) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_msgSend(aceObject, "sash"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    LOBYTE(v12) = 0;
  }

  else if (objc_opt_respondsToSelector())
  {
    v12 = [viewController hasSash] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)isHintItem
{
  aceObject = [(SiriSharedUITranscriptItem *)self aceObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemType = [aceObject itemType];
    v4 = [itemType isEqualToString:*MEMORY[0x277D47C60]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAnnouncementItem
{
  aceObject = [(SiriSharedUITranscriptItem *)self aceObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    itemType = [aceObject itemType];
    v4 = [itemType isEqualToString:*MEMORY[0x277D47C48]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)platterCategory
{
  if ([(SiriSharedUITranscriptItem *)self isConversationItem])
  {
    return 1;
  }

  if ([(SiriSharedUITranscriptItem *)self isAnnouncementItem])
  {
    return 2;
  }

  return 0;
}

- (CGRect)previousFrame
{
  x = self->_previousFrame.origin.x;
  y = self->_previousFrame.origin.y;
  width = self->_previousFrame.size.width;
  height = self->_previousFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end