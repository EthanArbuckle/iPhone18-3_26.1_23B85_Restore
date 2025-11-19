@interface SBHomeHardwareButtonGestureRecognizerConfiguration
- (NSArray)allGestureRecognizers;
@end

@implementation SBHomeHardwareButtonGestureRecognizerConfiguration

- (NSArray)allGestureRecognizers
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *&self->_initialButtonDownGestureRecognizer;
  singlePressUpGestureRecognizer = self->_singlePressUpGestureRecognizer;
  v6 = *&self->_acceleratedSinglePressUpGestureRecognizer;
  doublePressDownGestureRecognizer = self->_doublePressDownGestureRecognizer;
  v8 = *&self->_doublePressUpGestureRecognizer;
  doubleTapUpGestureRecognizer = self->_doubleTapUpGestureRecognizer;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:9];

  return v2;
}

@end