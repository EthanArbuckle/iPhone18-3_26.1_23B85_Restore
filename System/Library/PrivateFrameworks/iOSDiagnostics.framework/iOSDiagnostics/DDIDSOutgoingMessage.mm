@interface DDIDSOutgoingMessage
- (DDIDSOutgoingMessage)initWithDestination:(id)destination message:(id)message data:(id)data forceLocalDelivery:(BOOL)delivery expectsResponse:(BOOL)response response:(id)a8;
- (NSString)description;
@end

@implementation DDIDSOutgoingMessage

- (DDIDSOutgoingMessage)initWithDestination:(id)destination message:(id)message data:(id)data forceLocalDelivery:(BOOL)delivery expectsResponse:(BOOL)response response:(id)a8
{
  destinationCopy = destination;
  messageCopy = message;
  dataCopy = data;
  v18 = a8;
  v32.receiver = self;
  v32.super_class = DDIDSOutgoingMessage;
  v19 = [(DDIDSOutgoingMessage *)&v32 init];
  if (v19)
  {
    responseCopy = response;
    v20 = +[NSMutableDictionary dictionary];
    if (dataCopy)
    {
      v31 = 0;
      v21 = [NSKeyedArchiver archivedDataWithRootObject:dataCopy requiringSecureCoding:1 error:&v31];
      v22 = v31;
      [(NSDictionary *)v20 setObject:v21 forKeyedSubscript:@"data"];

      if (v22)
      {
        v23 = DiagnosticLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_10000D9A0(v22, v23);
        }
      }

      else
      {
        v24 = objc_opt_class();
        v23 = NSStringFromClass(v24);
        [(NSDictionary *)v20 setObject:v23 forKeyedSubscript:@"class"];
      }
    }

    [(NSDictionary *)v20 setObject:messageCopy forKeyedSubscript:@"messageName"];
    dictionary = v19->_dictionary;
    v19->_dictionary = v20;
    v26 = v20;

    objc_storeStrong(&v19->_destination, destination);
    v19->_forceLocalDelivery = delivery;
    v19->_retryCount = 0;
    v27 = objc_retainBlock(v18);
    response = v19->_response;
    v19->_response = v27;

    v19->_expectsResponse = responseCopy;
  }

  return v19;
}

- (NSString)description
{
  dictionary = [(DDIDSOutgoingMessage *)self dictionary];
  v4 = [NSNumber numberWithInteger:[(DDIDSOutgoingMessage *)self retryCount]];
  v5 = [NSString stringWithFormat:@"dictionary: %@ retry count: %@", dictionary, v4];;

  return v5;
}

@end