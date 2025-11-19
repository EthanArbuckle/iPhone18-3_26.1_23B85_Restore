@interface SVAudioSessionConfiguration
- (BOOL)isEqualToConfiguration:(id)a3;
- (SVAudioSessionConfiguration)initWithCategory:(id)a3 mode:(id)a4 policy:(unint64_t)a5;
@end

@implementation SVAudioSessionConfiguration

- (SVAudioSessionConfiguration)initWithCategory:(id)a3 mode:(id)a4 policy:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SVAudioSessionConfiguration;
  v11 = [(SVAudioSessionConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_category, a3);
    objc_storeStrong(&v12->_mode, a4);
    v12->_routeSharingPolicy = a5;
  }

  return v12;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(SVAudioSessionConfiguration *)self category];
  v6 = [v4 category];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(SVAudioSessionConfiguration *)self mode];
    v8 = [v4 mode];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(SVAudioSessionConfiguration *)self routeSharingPolicy];
      v10 = v9 == [v4 routeSharingPolicy];
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

  return v10;
}

@end