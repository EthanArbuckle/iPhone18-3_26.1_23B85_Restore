@interface UIWebOptGroup
- (UIWebOptGroup)initWithGroup:(id)a3 itemOffset:(int64_t)a4;
- (void)dealloc;
@end

@implementation UIWebOptGroup

- (UIWebOptGroup)initWithGroup:(id)a3 itemOffset:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = UIWebOptGroup;
  v6 = [(UIWebOptGroup *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(UIWebOptGroup *)v6 setGroup:a3];
    v7->_offset = a4;
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