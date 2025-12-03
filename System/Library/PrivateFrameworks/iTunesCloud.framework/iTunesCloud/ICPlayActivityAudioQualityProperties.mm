@interface ICPlayActivityAudioQualityProperties
- (ICPlayActivityAudioQualityProperties)initWithCoder:(id)coder;
- (NSString)codecString;
- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICPlayActivityAudioQualityProperties

- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone
{
  v5 = [[(objc_class *)class allocWithZone:zone] init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 1) = self->_bitRate;
    *(v5 + 2) = self->_bitDepth;
    objc_storeStrong(v5 + 3, self->_channelLayoutDescription);
    *(v6 + 8) = self->_codec;
    *(v6 + 5) = self->_sampleRate;
    *(v6 + 48) = self->_spatialized;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(ICPlayActivityAudioQualityProperties *)self _copyWithClass:v5 zone:zone];
}

- (ICPlayActivityAudioQualityProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ICPlayActivityAudioQualityProperties;
  v5 = [(ICPlayActivityAudioQualityProperties *)&v9 init];
  if (v5)
  {
    v5->_bitRate = [coderCopy decodeInt64ForKey:@"bitRate"];
    v5->_bitDepth = [coderCopy decodeInt64ForKey:@"bitDepth"];
    v6 = [coderCopy decodeObjectForKey:@"channelLayoutDescription"];
    channelLayoutDescription = v5->_channelLayoutDescription;
    v5->_channelLayoutDescription = v6;

    v5->_codec = [coderCopy decodeInt32ForKey:@"codec"];
    v5->_sampleRate = [coderCopy decodeInt64ForKey:@"sampleRate"];
    v5->_spatialized = [coderCopy decodeBoolForKey:@"spatialized"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bitRate = self->_bitRate;
  coderCopy = coder;
  [coderCopy encodeInt64:bitRate forKey:@"bitRate"];
  [coderCopy encodeInt64:self->_bitDepth forKey:@"bitDepth"];
  [coderCopy encodeObject:self->_channelLayoutDescription forKey:@"channelLayoutDescription"];
  [coderCopy encodeInt32:self->_codec forKey:@"codec"];
  [coderCopy encodeInt64:self->_sampleRate forKey:@"sampleRate"];
  [coderCopy encodeBool:self->_spatialized forKey:@"spatialized"];
}

- (NSString)codecString
{
  v4 = bswap32(self->_codec);
  v5 = 0;
  v2 = [MEMORY[0x1E696AEC0] stringWithCString:&v4 encoding:1];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  if (self->_bitRate)
  {
    [v6 appendFormat:@" bitRate: %zd", self->_bitRate];
  }

  if (self->_bitDepth)
  {
    [v6 appendFormat:@" bitDepth: %zd", self->_bitDepth];
  }

  if (self->_channelLayoutDescription)
  {
    [v6 appendFormat:@"channels: %@", self->_channelLayoutDescription];
  }

  codec = self->_codec;
  if (codec)
  {
    v11 = bswap32(codec);
    v12 = 0;
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:&v11 encoding:1];
    [v6 appendFormat:@"codec: %@", v8];
  }

  if (self->_sampleRate)
  {
    [v6 appendFormat:@" sampleRate: %zd", self->_sampleRate];
  }

  if (self->_spatialized)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@" spatialized: %@", v9];
  [v6 appendString:@">"];

  return v6;
}

@end