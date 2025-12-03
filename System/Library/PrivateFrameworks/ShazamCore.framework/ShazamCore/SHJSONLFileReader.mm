@interface SHJSONLFileReader
- (BOOL)loadDataFromURL:(id)l error:(id *)error;
- (SHJSONLDataDetokenizerDelegate)delegate;
@end

@implementation SHJSONLFileReader

- (BOOL)loadDataFromURL:(id)l error:(id *)error
{
  lCopy = l;
  LOBYTE(error) = [(SHJSONLFileReader *)self loadDataFromURL:lCopy withCompression:[SHDataCompression error:"supportedCompressionTypeFromFileURL:" supportedCompressionTypeFromFileURL:lCopy], error];

  return error;
}

- (SHJSONLDataDetokenizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end