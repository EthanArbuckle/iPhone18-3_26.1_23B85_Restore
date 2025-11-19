@interface TBGloriaTile
- (TBGloriaTile)initWithEncodedKey:(unint64_t)a3 zoom:(unsigned __int8)a4;
- (TBGloriaTile)initWithLat:(double)a3 lng:(double)a4 zoom:(unsigned __int8)a5;
- (id)adjacentTileKeysWithLevel:(unsigned int)a3;
- (id)neighborTileKeysWithRadius:(double)a3;
@end

@implementation TBGloriaTile

- (TBGloriaTile)initWithEncodedKey:(unint64_t)a3 zoom:(unsigned __int8)a4
{
  v18.receiver = self;
  v18.super_class = TBGloriaTile;
  v6 = [(TBGloriaTile *)&v18 init];
  v6->_key = a3;
  v6->_zoom = a4;
  gloria::TileId::TileId(v17, a3);
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

- (TBGloriaTile)initWithLat:(double)a3 lng:(double)a4 zoom:(unsigned __int8)a5
{
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14.receiver = self;
  v14.super_class = TBGloriaTile;
  v8 = [(TBGloriaTile *)&v14 init];
  v8->_lat = a3;
  v8->_lng = a4;
  v8->_zoom = a5;
  gloria::TileId::FromLatLng(&v17, &v16, &v15, v13);
  v8->_key = gloria::TileId::GetEncodedTileId(v13);
  v8->_tileSize = gloria::TileId::TileSize(v13);
  v8->_north = _TBGloriaBoundingBoxFromLocation(v17, v16, v15);
  v8->_south = v9;
  v8->_east = v10;
  v8->_west = v11;
  return v8;
}

- (id)adjacentTileKeysWithLevel:(unsigned int)a3
{
  v5 = [MEMORY[0x277CBEB58] set];
  gloria::TileId::TileId(v14, [(TBGloriaTile *)self key]);
  gloria::TileId::Neighbors(v14, a3, &v12);
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

- (id)neighborTileKeysWithRadius:(double)a3
{
  v5 = [MEMORY[0x277CBEB58] set];
  gloria::TileId::TileId(v14, [(TBGloriaTile *)self key]);
  gloria::TileId::NeighborsWithinRadius(v14, a3, &v12);
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