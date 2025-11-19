@interface CHChannelText
- (OZChannelText)ozChannel;
- (id)string;
- (void)setAttributedString:(id)a3;
- (void)setString:(id)a3;
- (void)setString:(id)a3 affectLayout:(BOOL)a4;
@end

@implementation CHChannelText

- (OZChannelText)ozChannel
{
  result = self->super.super._pOZChannel;
  if (result)
  {
  }

  return result;
}

- (id)string
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  (*(*pOZChannel + 848))(&v5);
  v3 = PCString::ns_str(&v5);
  PCString::~PCString(&v5);
  return v3;
}

- (void)setString:(id)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v5 = 0;
  }

  v6.var0 = 0;
  PCString::set(&v6, a3);
  (*(*v5 + 864))(v5, &v6, 0, 0);
  PCString::~PCString(&v6);
}

- (void)setString:(id)a3 affectLayout:(BOOL)a4
{
  v4 = a4;
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  else
  {
    v7 = 0;
  }

  v8.var0 = 0;
  PCString::set(&v8, a3);
  (*(*v7 + 864))(v7, &v8, 0, v4);
  PCString::~PCString(&v8);
}

- (void)setAttributedString:(id)a3
{
  pOZChannel = self->super.super._pOZChannel;
  if (pOZChannel)
  {
  }

  v4 = *(*pOZChannel + 872);

  v4();
}

@end