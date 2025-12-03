@interface ICMusicUserStateCookies
- (ICMusicUserStateCookies)initWithBlock:(id)block;
- (ICMusicUserStateCookies)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setItfe:(id)itfe;
- (void)setXpab:(id)xpab;
@end

@implementation ICMusicUserStateCookies

- (void)setXpab:(id)xpab
{
  xpabCopy = xpab;
  v9 = xpabCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserStateCookies.m" lineNumber:67 description:@"Attempt to mutate after being initialized."];

    xpabCopy = v9;
  }

  v6 = [xpabCopy copy];
  xpab = self->_xpab;
  self->_xpab = v6;
}

- (void)setItfe:(id)itfe
{
  itfeCopy = itfe;
  v9 = itfeCopy;
  if (self->_frozen)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ICMusicUserStateCookies.m" lineNumber:62 description:@"Attempt to mutate after being initialized."];

    itfeCopy = v9;
  }

  v6 = [itfeCopy copy];
  itfe = self->_itfe;
  self->_itfe = v6;
}

- (ICMusicUserStateCookies)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICMusicUserStateCookies;
  v5 = [(ICMusicUserStateCookies *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"xpab"];
    xpab = v5->_xpab;
    v5->_xpab = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itfe"];
    itfe = v5->_itfe;
    v5->_itfe = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  xpab = self->_xpab;
  coderCopy = coder;
  [coderCopy encodeObject:xpab forKey:@"xpab"];
  [coderCopy encodeObject:self->_itfe forKey:@"itfe"];
}

- (ICMusicUserStateCookies)initWithBlock:(id)block
{
  blockCopy = block;
  v7.receiver = self;
  v7.super_class = ICMusicUserStateCookies;
  v5 = [(ICMusicUserStateCookies *)&v7 init];
  if (v5)
  {
    blockCopy[2](blockCopy, v5);
    v5->_frozen = 1;
  }

  return v5;
}

@end