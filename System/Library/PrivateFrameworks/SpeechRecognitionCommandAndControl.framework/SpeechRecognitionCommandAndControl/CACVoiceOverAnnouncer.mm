@interface CACVoiceOverAnnouncer
- (CACVoiceOverAnnouncer)init;
- (void)_dequeueNextAnnouncement;
- (void)_didFinishAnnouncement:(id)announcement;
- (void)announceMessage:(id)message type:(int64_t)type completion:(id)completion;
- (void)prepareForImmediateAnnouncement;
@end

@implementation CACVoiceOverAnnouncer

- (CACVoiceOverAnnouncer)init
{
  v9.receiver = self;
  v9.super_class = CACVoiceOverAnnouncer;
  v2 = [(CACVoiceOverAnnouncer *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    voiceOverAnnouncementQueue = v2->_voiceOverAnnouncementQueue;
    v2->_voiceOverAnnouncementQueue = array;

    v5 = dispatch_queue_create("CACVoiceOverAnnouncer", 0);
    announcerQueue = v2->_announcerQueue;
    v2->_announcerQueue = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didFinishAnnouncement_ name:*MEMORY[0x277D76420] object:0];
  }

  return v2;
}

- (void)announceMessage:(id)message type:(int64_t)type completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  announcerQueue = self->_announcerQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__CACVoiceOverAnnouncer_announceMessage_type_completion___block_invoke;
  v13[3] = &unk_279CEC1D0;
  v16 = completionCopy;
  typeCopy = type;
  v14 = messageCopy;
  selfCopy = self;
  v11 = completionCopy;
  v12 = messageCopy;
  dispatch_async(announcerQueue, v13);
}

void __57__CACVoiceOverAnnouncer_announceMessage_type_completion___block_invoke(uint64_t a1)
{
  v6 = [[CACVoiceOverAnnouncement alloc] initWithMessage:*(a1 + 32) type:*(a1 + 56) completion:*(a1 + 48)];
  v2 = [*(a1 + 40) voiceOverAnnouncementQueue];
  [v2 addObject:v6];

  v3 = [*(a1 + 40) currentAnnouncement];
  if (!v3 || (v4 = v3, v5 = [*(a1 + 40) shouldInterruptCurrentAnnouncement], v4, v5))
  {
    [*(a1 + 40) _dequeueNextAnnouncement];
  }
}

- (void)prepareForImmediateAnnouncement
{
  announcerQueue = self->_announcerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CACVoiceOverAnnouncer_prepareForImmediateAnnouncement__block_invoke;
  block[3] = &unk_279CEB2D0;
  block[4] = self;
  dispatch_async(announcerQueue, block);
}

void __56__CACVoiceOverAnnouncer_prepareForImmediateAnnouncement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShouldInterruptCurrentAnnouncement:1];
  v2 = [*(a1 + 32) voiceOverAnnouncementQueue];
  [v2 removeAllObjects];
}

- (void)_dequeueNextAnnouncement
{
  [(CACVoiceOverAnnouncer *)self setCurrentAnnouncement:0];
  [(CACVoiceOverAnnouncer *)self setShouldInterruptCurrentAnnouncement:0];
  voiceOverAnnouncementQueue = [(CACVoiceOverAnnouncer *)self voiceOverAnnouncementQueue];
  v4 = [voiceOverAnnouncementQueue count];

  if (v4)
  {
    voiceOverAnnouncementQueue2 = [(CACVoiceOverAnnouncer *)self voiceOverAnnouncementQueue];
    firstObject = [voiceOverAnnouncementQueue2 firstObject];

    voiceOverAnnouncementQueue3 = [(CACVoiceOverAnnouncer *)self voiceOverAnnouncementQueue];
    [voiceOverAnnouncementQueue3 removeObjectAtIndex:0];

    LODWORD(voiceOverAnnouncementQueue3) = *MEMORY[0x277D76438];
    message = [firstObject message];
    UIAccessibilityPostNotification(voiceOverAnnouncementQueue3, message);

    [(CACVoiceOverAnnouncer *)self setCurrentAnnouncement:firstObject];
  }
}

- (void)_didFinishAnnouncement:(id)announcement
{
  announcementCopy = announcement;
  announcerQueue = self->_announcerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CACVoiceOverAnnouncer__didFinishAnnouncement___block_invoke;
  v7[3] = &unk_279CEB4C0;
  v8 = announcementCopy;
  selfCopy = self;
  v6 = announcementCopy;
  dispatch_async(announcerQueue, v7);
}

void __48__CACVoiceOverAnnouncer__didFinishAnnouncement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v7 = [v2 objectForKeyedSubscript:*MEMORY[0x277D76428]];

  v3 = [*(a1 + 40) currentAnnouncement];
  v4 = [v3 completion];

  if (v4)
  {
    v5 = [*(a1 + 40) currentAnnouncement];
    v6 = [v5 completion];
    v6[2]();
  }

  [*(a1 + 40) _dequeueNextAnnouncement];
}

@end