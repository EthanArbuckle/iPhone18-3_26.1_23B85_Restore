@interface ICMusicUserStateCookies
- (ICMusicUserStateCookies)initWithBlock:(id)a3;
- (ICMusicUserStateCookies)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setItfe:(id)a3;
- (void)setXpab:(id)a3;
@end

@implementation ICMusicUserStateCookies

- (void)setXpab:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicUserStateCookies.m" lineNumber:67 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  xpab = self->_xpab;
  self->_xpab = v6;
}

- (void)setItfe:(id)a3
{
  v5 = a3;
  v9 = v5;
  if (self->_frozen)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"ICMusicUserStateCookies.m" lineNumber:62 description:@"Attempt to mutate after being initialized."];

    v5 = v9;
  }

  v6 = [v5 copy];
  itfe = self->_itfe;
  self->_itfe = v6;
}

- (ICMusicUserStateCookies)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICMusicUserStateCookies;
  v5 = [(ICMusicUserStateCookies *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"xpab"];
    xpab = v5->_xpab;
    v5->_xpab = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itfe"];
    itfe = v5->_itfe;
    v5->_itfe = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  xpab = self->_xpab;
  v5 = a3;
  [v5 encodeObject:xpab forKey:@"xpab"];
  [v5 encodeObject:self->_itfe forKey:@"itfe"];
}

- (ICMusicUserStateCookies)initWithBlock:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICMusicUserStateCookies;
  v5 = [(ICMusicUserStateCookies *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end