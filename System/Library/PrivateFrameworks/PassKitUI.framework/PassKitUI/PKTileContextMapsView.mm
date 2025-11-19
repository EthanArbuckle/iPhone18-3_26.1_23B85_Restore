@interface PKTileContextMapsView
+ (id)createForMapsPlaceID:(id)a3 caption:(id)a4;
- (PKTileContextMapsView)init;
@end

@implementation PKTileContextMapsView

+ (id)createForMapsPlaceID:(id)a3 caption:(id)a4
{
  v4 = sub_1BE052434();
  v6 = v5;
  v7 = sub_1BE052434();
  v9 = _s9PassKitUI23TileContextMapsViewHostC9createFor11mapsPlaceID7captionSo6UIViewCSS_SStFZ_0(v4, v6, v7, v8);

  return v9;
}

- (PKTileContextMapsView)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileContextMapsViewHost();
  return [(PKTileContextMapsView *)&v3 init];
}

@end