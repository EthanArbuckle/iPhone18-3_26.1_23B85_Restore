@interface SEProxyWithRemoteTransceiver
- (void)transceive:(id)transceive callback:(id)callback;
@end

@implementation SEProxyWithRemoteTransceiver

- (void)transceive:(id)transceive callback:(id)callback
{
  remoteTransceiver = self->_remoteTransceiver;
  v10 = 0;
  callbackCopy = callback;
  transceiveCopy = transceive;
  v8 = [(STSRemoteTransceiverProxy *)remoteTransceiver transceive:transceiveCopy outError:&v10];
  v9 = v10;
  NSLog(&cfstr_SertRemoteTran.isa, transceiveCopy, v8, v9);

  callbackCopy[2](callbackCopy, v8, v9);
}

@end