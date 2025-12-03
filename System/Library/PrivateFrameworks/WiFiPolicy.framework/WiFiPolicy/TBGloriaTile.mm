@interface TBGloriaTile
- (TBGloriaTile)initWithEncodedKey:(unint64_t)key zoom:(unsigned __int8)zoom;
- (TBGloriaTile)initWithLat:(double)lat lng:(double)lng zoom:(unsigned __int8)zoom;
- (id)adjacentTileKeysWithLevel:(unsigned int)level;
- (id)neighborTileKeysWithRadius:(double)radius;
@end

@implementation TBGloriaTile

- (TBGloriaTile)initWithEncodedKey:(unint64_t)key zoom:(unsigned __int8)zoom
{
  v18.receiver = self;
  v18.super_class = TBGloriaTile;
  v6 = [(TBGloriaTile *)&v18 init];
  v6->_key = key;
  v6->_zoom = zoom;
  gloria::TileId::TileId(v17, key);
  v16[0] = gloria::TileId::ToBBOX(v17);
  *&v16[1] = v7;
  *&v16[2] = v8;
  *&v16[3] = v9;
  *&v6->_north = v16[0];
  v6->_south = v7;
  v6->_east = v8;
  v6->_west = v9;
  v6->_tileSize = gloria::TileId::TileSize(v17);
  gloria::TileBoundingBox::ToWKT(__p, v16);
  if (v15 < 0)
  {
    if (!__p[1])
    {
      goto LABEL_7;
    }

    v10 = __p[0];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    v10 = __p;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v10];
  WKTString = v6->_WKTString;
  v6->_WKTString = v11;

LABEL_7:
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (TBGloriaTile)initWithLat:(double)lat lng:(double)lng zoom:(unsigned __int8)zoom
{
  latCopy = lat;
  lngCopy = lng;
  zoomCopy = zoom;
  v14.receiver = self;
  v14.super_class = TBGloriaTile;
  v8 = [(TBGloriaTile *)&v14 init];
  v8->_lat = lat;
  v8->_lng = lng;
  v8->_zoom = zoom;
  gloria::TileId::FromLatLng(&latCopy, &lngCopy, &zoomCopy, v13);
  v8->_key = gloria::TileId::GetEncodedTileId(v13);
  v8->_tileSize = gloria::TileId::TileSize(v13);
  v8->_north = _TBGloriaBoundingBoxFromLocation(latCopy, lngCopy, zoomCopy);
  v8->_south = v9;
  v8->_east = v10;
  v8->_west = v11;
  return v8;
}

- (id)adjacentTileKeysWithLevel:(unsigned int)level
{
  v5 = [MEMORY[0x277CBEB58] set];
  gloria::TileId::TileId(v14, [(TBGloriaTile *)self key]);
  gloria::TileId::Neighbors(v14, level, &v12);
  v6 = v12;
  if (v12 != v13)
  {
    do
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:gloria::TileId::GetEncodedTileId((v6 + 4))];
      [v5 addObject:v7];

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v13);
  }

  std::__tree<gloria::TileId>::destroy(&v12, v13[0]);

  return v5;
}

- (id)neighborTileKeysWithRadius:(double)radius
{
  v5 = [MEMORY[0x277CBEB58] set];
  gloria::TileId::TileId(v14, [(TBGloriaTile *)self key]);
  gloria::TileId::NeighborsWithinRadius(v14, radius, &v12);
  v6 = v12;
  if (v12 != v13)
  {
    do
    {
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:gloria::TileId::GetEncodedTileId((v6 + 4))];
      [v5 addObject:v7];

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v13);
  }

  std::__tree<gloria::TileId>::destroy(&v12, v13[0]);

  return v5;
}

@end