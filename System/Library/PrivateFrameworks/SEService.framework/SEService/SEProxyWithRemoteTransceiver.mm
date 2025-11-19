@interface SEProxyWithRemoteTransceiver
- (void)transceive:(id)a3 callback:(id)a4;
@end

@implementation SEProxyWithRemoteTransceiver

- (void)transceive:(id)a3 callback:(id)a4
{
  remoteTransceiver = self->_remoteTransceiver;
  v10 = 0;
  v6 = a4;
  v7 = a3;
  v8 = [(STSRemoteTransceiverProxy *)remoteTransceiver transceive:v7 outError:&v10];
  v9 = v10;
  NSLog(&cfstr_SertRemoteTran.isa, v7, v8, v9);

  v6[2](v6, v8, v9);
}

@end