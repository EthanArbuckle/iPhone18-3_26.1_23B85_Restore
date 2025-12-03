@interface VMContextNode
- (VMContextNode)initWithLanguage:(id)language count:(int)count;
- (void)printNode;
@end

@implementation VMContextNode

- (VMContextNode)initWithLanguage:(id)language count:(int)count
{
  languageCopy = language;
  v13.receiver = self;
  v13.super_class = VMContextNode;
  v8 = [(VMContextNode *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_language, language);
    v9->_count = count;
    prev = v9->_prev;
    v9->_prev = 0;

    next = v9->_next;
    v9->_next = 0;
  }

  return v9;
}

- (void)printNode
{
  v3 = sub_100002740();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    count = self->_count;
    language = self->_language;
    prev = self->_prev;
    next = self->_next;
    v8 = 138413314;
    selfCopy = self;
    v10 = 2112;
    v11 = language;
    v12 = 1024;
    v13 = count;
    v14 = 2112;
    v15 = prev;
    v16 = 2112;
    v17 = next;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@ %@ : %d, prev: %@, next: %@", &v8, 0x30u);
  }
}

@end