@interface ICLiveLinkQueueEvent
+ (ICLiveLinkQueueEvent)queueEventWithContentAdded:(id)added;
+ (ICLiveLinkQueueEvent)queueEventWithContentPlayedNow:(id)now;
+ (ICLiveLinkQueueEvent)queueEventWithContentRemoved:(id)removed;
+ (ICLiveLinkQueueEvent)queueEventWithContentReordered:(id)reordered;
+ (ICLiveLinkQueueEvent)queueEventWithContentReplaced:(id)replaced;
+ (ICLiveLinkQueueEvent)queueEventWithContentUpdatedMessage:(id)message;
+ (ICLiveLinkQueueEvent)queueEventWithPlaybackModeChanged:(id)changed;
- (id)description;
@end

@implementation ICLiveLinkQueueEvent

- (id)description
{
  kind = self->_kind;
  if (kind > 3)
  {
    if (kind > 5)
    {
      if (kind == 6)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p contentPlayedNow=%@", self, self->_contentPlayedNow];
        goto LABEL_19;
      }

      if (kind == 7)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p contentUpdatedMessage=%@", self, self->_contentUpdatedMessage];
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (kind == 4)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p playbackModeChanged=%@", self, self->_playbackModeChanged];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p contentReplaced=%@", self, self->_contentReplaced];
    }
  }

  else
  {
    if (kind <= 1)
    {
      if (!kind)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p unknown/invalid>", self, v5];
        goto LABEL_19;
      }

      if (kind == 1)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p contentAdded=%@", self, self->_contentAdded];
        goto LABEL_19;
      }

LABEL_18:
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p unknown/eventKind=%ld", self, kind];
      goto LABEL_19;
    }

    if (kind == 2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p contentRemoved=%@", self, self->_contentRemoved];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"<ICLiveLinkQueueEvent: %p contentReordered=%@", self, self->_contentReordered];
    }
  }

  v3 = LABEL_19:;

  return v3;
}

+ (ICLiveLinkQueueEvent)queueEventWithPlaybackModeChanged:(id)changed
{
  changedCopy = changed;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  v4->_kind = 4;
  playbackModeChanged = v4->_playbackModeChanged;
  v4->_playbackModeChanged = changedCopy;

  return v4;
}

+ (ICLiveLinkQueueEvent)queueEventWithContentUpdatedMessage:(id)message
{
  messageCopy = message;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  v4->_kind = 7;
  contentUpdatedMessage = v4->_contentUpdatedMessage;
  v4->_contentUpdatedMessage = messageCopy;

  return v4;
}

+ (ICLiveLinkQueueEvent)queueEventWithContentReplaced:(id)replaced
{
  replacedCopy = replaced;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  v4->_kind = 5;
  contentReplaced = v4->_contentReplaced;
  v4->_contentReplaced = replacedCopy;

  return v4;
}

+ (ICLiveLinkQueueEvent)queueEventWithContentReordered:(id)reordered
{
  reorderedCopy = reordered;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  v4->_kind = 3;
  contentReordered = v4->_contentReordered;
  v4->_contentReordered = reorderedCopy;

  return v4;
}

+ (ICLiveLinkQueueEvent)queueEventWithContentRemoved:(id)removed
{
  removedCopy = removed;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  v4->_kind = 2;
  contentRemoved = v4->_contentRemoved;
  v4->_contentRemoved = removedCopy;

  return v4;
}

+ (ICLiveLinkQueueEvent)queueEventWithContentPlayedNow:(id)now
{
  nowCopy = now;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  v4->_kind = 6;
  contentPlayedNow = v4->_contentPlayedNow;
  v4->_contentPlayedNow = nowCopy;

  return v4;
}

+ (ICLiveLinkQueueEvent)queueEventWithContentAdded:(id)added
{
  addedCopy = added;
  v4 = objc_alloc_init(ICLiveLinkQueueEvent);
  contentAdded = v4->_contentAdded;
  v4->_kind = 1;
  v4->_contentAdded = addedCopy;

  return v4;
}

@end