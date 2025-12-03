@interface MOContextMusicMetaData
- (MOContextMusicMetaData)init;
- (MOContextMusicMetaData)initWithCoder:(id)coder;
- (MOContextMusicMetaData)initWithMusicString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOContextMusicMetaData

- (MOContextMusicMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextMusicMetaData;
  return [(MOContextMusicMetaData *)&v3 init];
}

- (MOContextMusicMetaData)initWithMusicString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = MOContextMusicMetaData;
  v6 = [(MOContextMusicMetaData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_musicString, string);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [MOContextMusicMetaData alloc];
  musicString = [(MOContextMusicMetaData *)self musicString];
  v6 = [(MOContextMusicMetaData *)v4 initWithMusicString:musicString];

  artist = [(MOContextMusicMetaData *)self artist];
  [(MOContextMusicMetaData *)v6 setArtist:artist];

  title = [(MOContextMusicMetaData *)self title];
  [(MOContextMusicMetaData *)v6 setTitle:title];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  musicString = self->_musicString;
  coderCopy = coder;
  [coderCopy encodeObject:musicString forKey:@"musicString"];
  [coderCopy encodeObject:self->_artist forKey:@"artist"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
}

- (MOContextMusicMetaData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"musicString"];
  v6 = [(MOContextMusicMetaData *)self initWithMusicString:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"artist"];
    artist = v6->_artist;
    v6->_artist = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v6->_title;
    v6->_title = v9;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  musicString = [(MOContextMusicMetaData *)self musicString];
  mask = [musicString mask];
  artist = [(MOContextMusicMetaData *)self artist];
  title = [(MOContextMusicMetaData *)self title];
  v8 = [v3 stringWithFormat:@"music string, %@, artist, %@, title, %@", mask, artist, title];

  return v8;
}

@end