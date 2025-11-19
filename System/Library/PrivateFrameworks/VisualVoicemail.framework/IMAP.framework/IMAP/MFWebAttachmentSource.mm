@interface MFWebAttachmentSource
+ (id)_setOfAllSources;
+ (id)allSources;
- (BOOL)setAttachment:(id)a3 forURL:(id)a4;
- (MFWebAttachmentSource)init;
- (id)attachmentForURL:(id)a3;
- (id)description;
- (void)dealloc;
- (void)removeAttachmentForURL:(id)a3;
@end

@implementation MFWebAttachmentSource

+ (id)_setOfAllSources
{
  if (_setOfAllSources_onceToken != -1)
  {
    +[MFWebAttachmentSource _setOfAllSources];
  }

  v3 = _setOfAllSources_sAllWebAttachmentSources;

  return v3;
}

uint64_t __41__MFWebAttachmentSource__setOfAllSources__block_invoke()
{
  _setOfAllSources_sAllWebAttachmentSources = objc_alloc_init(MEMORY[0x277D24FC8]);

  return MEMORY[0x2821F96F8]();
}

+ (id)allSources
{
  v2 = [a1 _setOfAllSources];
  v3 = [v2 allObjects];
  v4 = [v3 sortedArrayUsingFunction:_SortWebAttachmentSources context:0];

  return v4;
}

- (MFWebAttachmentSource)init
{
  v9.receiver = self;
  v9.super_class = MFWebAttachmentSource;
  v2 = [(MFWebAttachmentSource *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MFWebAttachmentSource_AttachmentLock" andDelegate:v2];
    attachmentsLock = v2->_attachmentsLock;
    v2->_attachmentsLock = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    attachmentsByURL = v2->_attachmentsByURL;
    v2->_attachmentsByURL = v5;

    v7 = [objc_opt_class() _setOfAllSources];
    [v7 addObject:v2];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NSMutableDictionary *)self->_attachmentsByURL description];
  v7 = [v3 stringWithFormat:@"<%@ %p>, attachments=%@", v5, self, v6];

  return v7;
}

- (void)dealloc
{
  v3 = [objc_opt_class() _setOfAllSources];
  [v3 removeObject:self];

  v4.receiver = self;
  v4.super_class = MFWebAttachmentSource;
  [(MFWebAttachmentSource *)&v4 dealloc];
}

- (id)attachmentForURL:(id)a3
{
  if (a3)
  {
    attachmentsLock = self->_attachmentsLock;
    v5 = a3;
    [(MFLock *)attachmentsLock lock];
    v6 = [(NSMutableDictionary *)self->_attachmentsByURL objectForKey:v5];

    [(MFLock *)self->_attachmentsLock unlock];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)setAttachment:(id)a3 forURL:(id)a4
{
  attachmentsLock = self->_attachmentsLock;
  v7 = a4;
  v8 = a3;
  [(MFLock *)attachmentsLock lock];
  [(NSMutableDictionary *)self->_attachmentsByURL setObject:v8 forKey:v7];

  [(MFLock *)self->_attachmentsLock unlock];
  return 1;
}

- (void)removeAttachmentForURL:(id)a3
{
  attachmentsLock = self->_attachmentsLock;
  v5 = a3;
  [(MFLock *)attachmentsLock lock];
  [(NSMutableDictionary *)self->_attachmentsByURL removeObjectForKey:v5];

  v6 = self->_attachmentsLock;

  [(MFLock *)v6 unlock];
}

@end