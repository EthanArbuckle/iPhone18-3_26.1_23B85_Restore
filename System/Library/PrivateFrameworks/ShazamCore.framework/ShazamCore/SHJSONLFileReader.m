@interface SHJSONLFileReader
- (BOOL)loadDataFromURL:(id)a3 error:(id *)a4;
- (SHJSONLDataDetokenizerDelegate)delegate;
@end

@implementation SHJSONLFileReader

- (BOOL)loadDataFromURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  LOBYTE(a4) = [(SHJSONLFileReader *)self loadDataFromURL:v6 withCompression:[SHDataCompression error:"supportedCompressionTypeFromFileURL:" supportedCompressionTypeFromFileURL:v6], a4];

  return a4;
}

- (SHJSONLDataDetokenizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end