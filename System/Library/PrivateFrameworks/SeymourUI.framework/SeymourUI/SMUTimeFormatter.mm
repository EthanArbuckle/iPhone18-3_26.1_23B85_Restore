@interface SMUTimeFormatter
- (SMUTimeFormatter)init;
- (id)stringFromCMTime:(id *)time;
@end

@implementation SMUTimeFormatter

- (SMUTimeFormatter)init
{
  v6.receiver = self;
  v6.super_class = SMUTimeFormatter;
  v2 = [(SMUTimeFormatter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE6640]);
    formatter = v2->_formatter;
    v2->_formatter = v3;
  }

  return v2;
}

- (id)stringFromCMTime:(id *)time
{
  formatter = self->_formatter;
  v6 = *time;
  v4 = [(AVTimeFormatter *)formatter stringFromCMTime:&v6];

  return v4;
}

@end