@interface VKCDataDetectorCatalystRevealHighlighter
- (VKCDataDetectorCatalystRevealHighlighterDelegate)delegate;
- (VKCDataDetectorElementView)elementView;
@end

@implementation VKCDataDetectorCatalystRevealHighlighter

- (VKCDataDetectorCatalystRevealHighlighterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VKCDataDetectorElementView)elementView
{
  WeakRetained = objc_loadWeakRetained(&self->_elementView);

  return WeakRetained;
}

@end