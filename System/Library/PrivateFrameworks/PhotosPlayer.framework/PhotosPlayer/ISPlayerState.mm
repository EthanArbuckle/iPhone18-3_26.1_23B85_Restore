@interface ISPlayerState
+ (id)outputInfoWithPhotoBlurRadius:(double)radius videoAlpha:(double)alpha videoBlurRadius:(double)blurRadius label:(id)label;
- (ISPlayerState)initWithPhotoBlurRadius:(double)radius videoAlpha:(double)alpha videoBlurRadius:(double)blurRadius label:(id)label;
- (id)description;
@end

@implementation ISPlayerState

- (id)description
{
  v8.receiver = self;
  v8.super_class = ISPlayerState;
  v3 = [(ISPlayerState *)&v8 description];
  v4 = [v3 stringByAppendingFormat:@"\n\t\tlabel:\t\t%@", self->_diagnosticLabel];

  v5 = [v4 stringByAppendingFormat:@"\n\t\tphoto:\t\t      b:%f", *&self->_photoBlurRadius];

  v6 = [v5 stringByAppendingFormat:@"\n\t\tvideo:\t\ta:%f, b:%f", *&self->_videoAlpha, *&self->_videoBlurRadius];

  return v6;
}

- (ISPlayerState)initWithPhotoBlurRadius:(double)radius videoAlpha:(double)alpha videoBlurRadius:(double)blurRadius label:(id)label
{
  labelCopy = label;
  v16.receiver = self;
  v16.super_class = ISPlayerState;
  v11 = [(ISPlayerState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_photoBlurRadius = radius;
    v11->_videoAlpha = alpha;
    v11->_videoBlurRadius = blurRadius;
    v13 = [labelCopy copy];
    diagnosticLabel = v12->_diagnosticLabel;
    v12->_diagnosticLabel = v13;
  }

  return v12;
}

+ (id)outputInfoWithPhotoBlurRadius:(double)radius videoAlpha:(double)alpha videoBlurRadius:(double)blurRadius label:(id)label
{
  labelCopy = label;
  v11 = [[self alloc] initWithPhotoBlurRadius:labelCopy videoAlpha:radius videoBlurRadius:alpha label:blurRadius];

  return v11;
}

@end