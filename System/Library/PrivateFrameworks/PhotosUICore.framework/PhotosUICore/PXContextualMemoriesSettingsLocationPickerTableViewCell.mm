@interface PXContextualMemoriesSettingsLocationPickerTableViewCell
- (PXContextualMemoriesSettingsLocationPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PXContextualMemoriesSettingsLocationPickerTableViewCell

- (PXContextualMemoriesSettingsLocationPickerTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = PXContextualMemoriesSettingsLocationPickerTableViewCell;
  v4 = [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)v4 setSelectionStyle:0];
    v6 = [PXPlacesMapView alloc];
    contentView = [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)v5 contentView];
    [contentView bounds];
    v8 = [(PXPlacesMapView *)v6 initWithFrame:?];
    mapView = v5->_mapView;
    v5->_mapView = v8;

    [(PXPlacesMapView *)v5->_mapView setAutoresizingMask:18];
    [(PXPlacesMapView *)v5->_mapView setShowsUserLocation:1];
    contentView2 = [(PXContextualMemoriesSettingsLocationPickerTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_mapView];
  }

  return v5;
}

@end