@interface MOContextMusicMetaData
- (MOContextMusicMetaData)init;
- (MOContextMusicMetaData)initWithCoder:(id)a3;
- (MOContextMusicMetaData)initWithMusicString:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOContextMusicMetaData

- (MOContextMusicMetaData)init
{
  v3.receiver = self;
  v3.super_class = MOContextMusicMetaData;
  return [(MOContextMusicMetaData *)&v3 init];
}

- (MOContextMusicMetaData)initWithMusicString:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MOContextMusicMetaData;
  v6 = [(MOContextMusicMetaData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_musicString, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [MOContextMusicMetaData alloc];
  v5 = [(MOContextMusicMetaData *)self musicString];
  v6 = [(MOContextMusicMetaData *)v4 initWithMusicString:v5];

  v7 = [(MOContextMusicMetaData *)self artist];
  [(MOContextMusicMetaData *)v6 setArtist:v7];

  v8 = [(MOContextMusicMetaData *)self title];
  [(MOContextMusicMetaData *)v6 setTitle:v8];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  musicString = self->_musicString;
  v5 = a3;
  [v5 encodeObject:musicString forKey:@"musicString"];
  [v5 encodeObject:self->_artist forKey:@"artist"];
  [v5 encodeObject:self->_title forKey:@"title"];
}

- (MOContextMusicMetaData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"musicString"];
  v6 = [(MOContextMusicMetaData *)self initWithMusicString:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"artist"];
    artist = v6->_artist;
    v6->_artist = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v6->_title;
    v6->_title = v9;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOContextMusicMetaData *)self musicString];
  v5 = [v4 mask];
  v6 = [(MOContextMusicMetaData *)self artist];
  v7 = [(MOContextMusicMetaData *)self title];
  v8 = [v3 stringWithFormat:@"music string, %@, artist, %@, title, %@", v5, v6, v7];

  return v8;
}

@end