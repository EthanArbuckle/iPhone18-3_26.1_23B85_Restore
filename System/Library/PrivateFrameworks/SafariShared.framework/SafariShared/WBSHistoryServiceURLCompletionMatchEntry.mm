@interface WBSHistoryServiceURLCompletionMatchEntry
- (NSString)title;
- (NSString)url;
- (WBSHistoryServiceURLCompletionMatchEntry)initWithCoder:(id)a3;
- (WBSHistoryServiceURLCompletionMatchEntry)initWithStreamData:(void *)a3;
- (WBSHistoryServiceURLCompletionMatchEntry)initWithURLString:(id)a3 title:(id)a4 topSitesScore:(float)a5 visitCountScore:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSHistoryServiceURLCompletionMatchEntry

- (WBSHistoryServiceURLCompletionMatchEntry)initWithURLString:(id)a3 title:(id)a4 topSitesScore:(float)a5 visitCountScore:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v22.receiver = self;
  v22.super_class = WBSHistoryServiceURLCompletionMatchEntry;
  v13 = [(WBSHistoryServiceURLCompletionMatchEntry *)&v22 init];
  if (v13)
  {
    v14 = [(__CFString *)v11 lengthOfBytesUsingEncoding:4];
    v15 = [(__CFString *)v12 lengthOfBytesUsingEncoding:4];
    v16 = v14 + v15 + 42;
    v17 = operator new(v16);
    bzero(v17, v16);
    ptr = v13->_streamData.__ptr_;
    v13->_streamData.__ptr_ = v17;
    p_var0 = v17;
    if (ptr)
    {
      MEMORY[0x1BFB13480](ptr, 0x1050C40224969E2);
      p_var0 = &v13->_streamData.__ptr_->var0;
    }

    *p_var0 = 5;
    *(p_var0 + 1) = v16;
    p_var0[6] = a5;
    *(p_var0 + 4) = a6;
    if (v11)
    {
      CFStringGetCString(v11, v17 + 40, v14 + 1, 0x8000100u);
      v13->_streamData.__ptr_->var1 = v17 + 40;
    }

    if (v12)
    {
      CFStringGetCString(v12, &v17[v14 + 41], v15 + 1, 0x8000100u);
      v13->_streamData.__ptr_->var2 = &v17[v14 + 41];
    }

    objc_storeStrong(&v13->_url, a3);
    objc_storeStrong(&v13->_title, a4);
    v20 = v13;
  }

  return v13;
}

- (WBSHistoryServiceURLCompletionMatchEntry)initWithStreamData:(void *)a3
{
  v10.receiver = self;
  v10.super_class = WBSHistoryServiceURLCompletionMatchEntry;
  v4 = [(WBSHistoryServiceURLCompletionMatchEntry *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v6 = *a3;
    *a3 = 0;
    ptr = v4->_streamData.__ptr_;
    v5->_streamData.__ptr_ = v6;
    if (ptr)
    {
      MEMORY[0x1BFB13480](ptr, 0x1050C40224969E2);
    }

    v8 = v5;
  }

  return v5;
}

- (WBSHistoryServiceURLCompletionMatchEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  [v4 decodeDoubleForKey:@"topSitesScore"];
  v8 = v7;
  v9 = [v4 decodeIntegerForKey:@"visitCountScore"];
  *&v10 = v8;
  v11 = [(WBSHistoryServiceURLCompletionMatchEntry *)self initWithURLString:v5 title:v6 topSitesScore:v9 visitCountScore:v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[WBSHistoryServiceURLCompletionMatchEntry visitCountScore](self forKey:{"visitCountScore"), @"visitCountScore"}];
  [(WBSHistoryServiceURLCompletionMatchEntry *)self topSitesScore];
  [v7 encodeDouble:@"topSitesScore" forKey:v4];
  v5 = [(WBSHistoryServiceURLCompletionMatchEntry *)self url];
  [v7 encodeObject:v5 forKey:@"url"];

  v6 = [(WBSHistoryServiceURLCompletionMatchEntry *)self title];
  if (v6)
  {
    [v7 encodeObject:v6 forKey:@"title"];
  }
}

- (NSString)url
{
  url = self->_url;
  if (!url)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:self->_streamData.__ptr_->var1];
    v5 = self->_url;
    self->_url = v4;

    url = self->_url;
  }

  return url;
}

- (NSString)title
{
  title = self->_title;
  if (!title)
  {
    if (self->_streamData.__ptr_->var2)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v5 = self->_title;
      self->_title = v4;

      title = self->_title;
    }

    else
    {
      title = 0;
    }
  }

  return title;
}

@end