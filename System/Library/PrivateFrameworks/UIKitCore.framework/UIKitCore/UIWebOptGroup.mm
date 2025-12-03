@interface UIWebOptGroup
- (UIWebOptGroup)initWithGroup:(id)group itemOffset:(int64_t)offset;
- (void)dealloc;
@end

@implementation UIWebOptGroup

- (UIWebOptGroup)initWithGroup:(id)group itemOffset:(int64_t)offset
{
  v9.receiver = self;
  v9.super_class = UIWebOptGroup;
  v6 = [(UIWebOptGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(UIWebOptGroup *)v6 setGroup:group];
    v7->_offset = offset;
  }

  return v7;
}

- (void)dealloc
{
  [(UIWebOptGroup *)self setGroup:0];
  [(UIWebOptGroup *)self setOptions:0];
  v3.receiver = self;
  v3.super_class = UIWebOptGroup;
  [(UIWebOptGroup *)&v3 dealloc];
}

@end