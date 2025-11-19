@interface PXContextualMemoriesSettingsLocationPickerTableViewCell
- (PXContextualMemoriesSettingsLocationPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PXContextualMemoriesSettingsLocationPickerTableViewCell

- (PXContextualMemoriesSettingsLocationPickerTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = PXContextualMemoriesSettingsLocationPickerTableViewCell;
  v4 = [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)v4 setSelectionStyle:0];
    v6 = [PXPlacesMapView alloc];
    v7 = [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)v5 contentView];
    [v7 bounds];
    v8 = [(PXPlacesMapView *)v6 initWithFrame:?];
    mapView = v5->_mapView;
    v5->_mapView = v8;

    [(PXPlacesMapView *)v5->_mapView setAutoresizingMask:18];
    [(PXPlacesMapView *)v5->_mapView setShowsUserLocation:1];
    v10 = [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)v5 contentView];
    [v10 addSubview:v5->_mapView];
  }

  return v5;
}

@end