@interface SKUIRedeemItem
- (SKUIRedeemItem)initWithCoder:(id)coder;
- (_NSRange)ageBandRange;
- (id)artworkURLForSize:(int64_t)size;
- (id)largestArtworkURL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SKUIRedeemItem

- (_NSRange)ageBandRange
{
  v2 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = 0;
  result.length = v3;
  result.location = v2;
  return result;
}

- (id)artworkURLForSize:(int64_t)size
{
  artworks = [(SKUIRedeemItem *)self artworks];
  v5 = [artworks artworkURLForSize:size];

  return v5;
}

- (id)largestArtworkURL
{
  artworks = [(SKUIRedeemItem *)self artworks];
  largestArtwork = [artworks largestArtwork];
  v4 = [largestArtwork URL];

  return v4;
}

- (SKUIRedeemItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SKUIRedeemItem;
  v5 = [(SKUIRedeemItem *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"title"];
    [(SKUIItem *)v5 setTitle:v6];

    -[SKUIItem setItemIdentifier:](v5, "setItemIdentifier:", [coderCopy decodeInt64ForKey:@"itemIdentifier"]);
    v7 = [coderCopy decodeObjectForKey:@"artworks"];
    [(SKUIRedeemItem *)v5 setArtworks:v7];

    -[SKUIItem setItemKind:](v5, "setItemKind:", [coderCopy decodeIntegerForKey:@"itemKind"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(SKUIItem *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeInt64:-[SKUIItem itemIdentifier](self forKey:{"itemIdentifier"), @"itemIdentifier"}];
  artworks = [(SKUIRedeemItem *)self artworks];
  [coderCopy encodeObject:artworks forKey:@"artworks"];

  [coderCopy encodeInteger:-[SKUIItem itemKind](self forKey:{"itemKind"), @"itemKind"}];
}

@end