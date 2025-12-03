@interface APWebProcessMRAIDJSO
+ (BOOL)isURLValid:(id)valid;
+ (id)eventStringForEvent:(int64_t)event;
+ (id)stateStringForState:(int64_t)state;
- (APWebProcessMRAIDJSO)init;
- (APWebProcessMRAIDJSODelegate)delegate;
- (BOOL)isViewable;
- (CGSize)expandedSize;
- (CGSize)maximumExpandedSize;
- (id)getExpandProperties;
- (id)getState;
- (void)_callListenersOfEvent:(int64_t)event withArguments:(id)arguments;
- (void)_createCalendarEvent:(id)event;
- (void)actionDidFailWithErrorDescription:(id)description;
- (void)addEventListener:(id)listener listener:(id)a4;
- (void)close;
- (void)expand:(id)expand;
- (void)open:(id)open;
- (void)removeEventListener:(id)listener listener:(id)a4;
- (void)resetVideoTagPlaytime;
- (void)setExpandProperties:(id)properties;
- (void)setState:(int64_t)state;
- (void)useCustomClose:(BOOL)close;
@end

@implementation APWebProcessMRAIDJSO

- (APWebProcessMRAIDJSO)init
{
  v6.receiver = self;
  v6.super_class = APWebProcessMRAIDJSO;
  v2 = [(APWebProcessMRAIDJSO *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    *(v2 + 4) = 10002;
    *(v2 + 4) = CGSizeZero;
    *(v2 + 4) = 0;
    *(v2 + 12) = 0x1000000000000;
  }

  return v2;
}

+ (id)eventStringForEvent:(int64_t)event
{
  if (event > 4)
  {
    return &stru_107A0;
  }

  else
  {
    return *(&off_10350 + event);
  }
}

+ (id)stateStringForState:(int64_t)state
{
  if ((state - 10000) > 5)
  {
    return &stru_107A0;
  }

  else
  {
    return *(&off_10378 + state - 10000);
  }
}

+ (BOOL)isURLValid:(id)valid
{
  validCopy = valid;
  v4 = sub_1008();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v11 = 138478083;
    v12 = objc_opt_class();
    v13 = 2113;
    v14 = validCopy;
    v5 = v12;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[%{private}@] Checking to see if URL is valid: %{private}@", &v11, 0x16u);
  }

  scheme = [validCopy scheme];
  v7 = [scheme isEqualToString:@"http"];
  if (v7)
  {
    goto LABEL_8;
  }

  scheme2 = [validCopy scheme];
  v9 = [scheme2 isEqualToString:@"https"];

  if ((v9 & 1) == 0)
  {
    scheme = sub_1008();
    if (os_log_type_enabled(scheme, OS_LOG_TYPE_ERROR))
    {
      sub_6924();
    }

LABEL_8:

    goto LABEL_9;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (void)setState:(int64_t)state
{
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [objc_opt_class() stateStringForState:state];
    *buf = 138478083;
    v13 = v6;
    v14 = 2114;
    v15 = v8;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{private}@] Setting state to %{public}@", buf, 0x16u);
  }

  if (self->_state != state)
  {
    self->_state = state;
    getState = [(APWebProcessMRAIDJSO *)self getState];
    v11 = getState;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:2 withArguments:v10];

    if (state == 10001 && ![(APWebProcessMRAIDJSO *)self hasFiredReadyEvent])
    {
      [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:1 withArguments:0];
      [(APWebProcessMRAIDJSO *)self setHasFiredReadyEvent:1];
    }
  }
}

- (void)actionDidFailWithErrorDescription:(id)description
{
  descriptionCopy = description;
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_69CC();
  }

  v7 = descriptionCopy;
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:v6];
}

- (void)resetVideoTagPlaytime
{
  v3 = sub_1008();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 138477827;
    v6 = objc_opt_class();
    v4 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{private}@] VideoTag Playtime has been reset.", &v5, 0xCu);
  }

  [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:4 withArguments:0];
}

- (void)close
{
  v3 = sub_1008();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v12 = objc_opt_class();
    v4 = v12;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{private}@] MRAID.close was called", buf, 0xCu);
  }

  if ([(APWebProcessMRAIDJSO *)self state]== &loc_2710 + 3)
  {
    delegate = [(APWebProcessMRAIDJSO *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return;
    }

    delegate2 = [(APWebProcessMRAIDJSO *)self delegate];
    [delegate2 webProcessMRAIDJSODidCallClose];
  }

  else
  {
    delegate2 = [NSString stringWithFormat:@"Only creatives in the %@ state may be closed.", @"expanded"];
    v8 = sub_1008();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_6A54();
    }

    v10[0] = delegate2;
    v10[1] = @"close";
    v9 = [NSArray arrayWithObjects:v10 count:2];
    [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:v9];
  }
}

- (void)expand:(id)expand
{
  expandCopy = expand;
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v21 = objc_opt_class();
    v6 = v21;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{private}@] MRAID.expand was called.", buf, 0xCu);
  }

  if ([(APWebProcessMRAIDJSO *)self state]!= &loc_2710 + 1)
  {
    v7 = [NSString stringWithFormat:@"Only creatives in the %@ state may be expanded.", @"default"];
    v13 = sub_1008();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_6A54();
    }

    v19[0] = v7;
    v19[1] = @"expand";
    v14 = v19;
    goto LABEL_18;
  }

  if (!expandCopy || ![expandCopy length])
  {
    v7 = [NSString stringWithFormat:@"One-part creatives are not supported, %@ must be called with the URL parameter.", @"expand"];
    v15 = sub_1008();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_6A54();
    }

    v18[0] = v7;
    v18[1] = @"expand";
    v14 = v18;
    goto LABEL_18;
  }

  v7 = [NSURL URLWithString:expandCopy];
  if (![APWebProcessMRAIDJSO isURLValid:v7])
  {
    v16 = sub_1008();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_6ADC();
    }

    v17[0] = @"URL parameter not valid, only http and https schemes are supported.";
    v17[1] = @"expand";
    v14 = v17;
LABEL_18:
    delegate2 = [NSArray arrayWithObjects:v14 count:2];
    [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:delegate2];
    goto LABEL_19;
  }

  delegate = [(APWebProcessMRAIDJSO *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(APWebProcessMRAIDJSO *)self delegate];
    [(APWebProcessMRAIDJSO *)self maximumExpandedSize];
    v12 = v11;
    [(APWebProcessMRAIDJSO *)self maximumExpandedSize];
    [delegate2 webProcessMRAIDJSODidCallExpand:v7 withMaximumWidth:v12 andHeight:?];
LABEL_19:
  }
}

- (void)_createCalendarEvent:(id)event
{
  eventCopy = event;
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v10 = 138478083;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = eventCopy;
    v6 = v11;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{private}@] Create Calendar Event was called: %{public}@", &v10, 0x16u);
  }

  delegate = [(APWebProcessMRAIDJSO *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(APWebProcessMRAIDJSO *)self delegate];
    [delegate2 webProcessMRAIDJSODidCallCreateCalendarEvent:eventCopy];
  }
}

- (id)getExpandProperties
{
  v3 = objc_alloc_init(NSMutableDictionary);
  if ([(APWebProcessMRAIDJSO *)self state]== &loc_2710 + 3)
  {
    [(APWebProcessMRAIDJSO *)self expandedSize];
    v5 = v4;
  }

  else
  {
    v6 = +[UIScreen mainScreen];
    [v6 bounds];
    v8 = v7;

    [(APWebProcessMRAIDJSO *)self maximumExpandedSize];
    if (v9 > v8 || v9 == 0.0)
    {
      v5 = v8;
    }

    else
    {
      v5 = v9;
    }
  }

  v11 = [NSNumber numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"width"];

  v12 = [NSNumber numberWithDouble:v5];
  [v3 setObject:v12 forKeyedSubscript:@"height"];

  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useCustomClose"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"isModal"];
  v13 = sub_1008();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v17 = 138478083;
    v18 = objc_opt_class();
    v19 = 2114;
    v20 = v3;
    v14 = v18;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[%{private}@] Expand Properties: %{public}@", &v17, 0x16u);
  }

  v15 = [v3 copy];

  return v15;
}

- (id)getState
{
  state = [(APWebProcessMRAIDJSO *)self state];

  return [APWebProcessMRAIDJSO stateStringForState:state];
}

- (BOOL)isViewable
{
  v3 = sub_1008();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = v4;
    viewable = [(APWebProcessMRAIDJSO *)self viewable];
    v7 = @"not ";
    if (viewable)
    {
      v7 = &stru_107A0;
    }

    v9 = 138478083;
    v10 = v4;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "[%{private}@] The WebProcess is %{public}@viewable", &v9, 0x16u);
  }

  return [(APWebProcessMRAIDJSO *)self viewable];
}

- (void)open:(id)open
{
  openCopy = open;
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v17 = objc_opt_class();
    v18 = 2114;
    v19 = openCopy;
    v6 = v17;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{private}@] MRAID.open was called with URL: %{public}@", buf, 0x16u);
  }

  if (!openCopy || ![openCopy length])
  {
    v7 = [NSString stringWithFormat:@"%@ must be called with the URL parameter.", @"open"];
    v11 = sub_1008();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_6A54();
    }

    v15[0] = v7;
    v15[1] = @"open";
    v12 = v15;
    goto LABEL_14;
  }

  v7 = [NSURL URLWithString:openCopy];
  if (![APWebProcessMRAIDJSO isURLValid:v7])
  {
    v13 = sub_1008();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_6B64();
    }

    v14[0] = @"URL parameter not valid, only http and https schemes are supported.";
    v14[1] = @"open";
    v12 = v14;
LABEL_14:
    delegate2 = [NSArray arrayWithObjects:v12 count:2];
    [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:delegate2];
    goto LABEL_15;
  }

  delegate = [(APWebProcessMRAIDJSO *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    delegate2 = [(APWebProcessMRAIDJSO *)self delegate];
    [delegate2 webProcessMRAIDJSODidCallOpen:v7];
LABEL_15:
  }
}

- (void)setExpandProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138478083;
    v23 = objc_opt_class();
    v24 = 2114;
    v25 = propertiesCopy;
    v6 = v23;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{private}@] Setting expand properties to %{public}@", buf, 0x16u);
  }

  if (propertiesCopy)
  {
    if ([(APWebProcessMRAIDJSO *)self state]== &loc_2710 + 3)
    {
      v7 = sub_1008();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_6C7C();
      }

      v21[0] = @"Expand properties can only be set before the ad is expanded.";
      v21[1] = @"setExpandProperties";
      v8 = [NSArray arrayWithObjects:v21 count:2];
      [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:v8];
    }

    else
    {
      [(APWebProcessMRAIDJSO *)self maximumExpandedSize];
      integerValue = v9;
      integerValue2 = v11;
      v13 = [propertiesCopy objectForKeyedSubscript:@"width"];
      v8 = v13;
      if (v13)
      {
        integerValue = [v13 integerValue];
      }

      v14 = [propertiesCopy objectForKeyedSubscript:@"height"];
      v15 = v14;
      if (v14)
      {
        integerValue2 = [v14 integerValue];
      }

      [(APWebProcessMRAIDJSO *)self setMaximumExpandedSize:integerValue, integerValue2];
      v16 = [propertiesCopy objectForKeyedSubscript:@"useCustomClose"];
      bOOLValue = [v16 BOOLValue];

      if (bOOLValue)
      {
        v18 = sub_1008();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_6BEC();
        }

        v20[0] = @"Using a custom close indicator is not supported.";
        v20[1] = @"setExpandProperties";
        v19 = [NSArray arrayWithObjects:v20 count:2];
        [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:v19];
      }
    }
  }

  else
  {
    v8 = sub_1008();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_6D0C();
    }
  }
}

- (void)useCustomClose:(BOOL)close
{
  closeCopy = close;
  v5 = sub_1008();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = @"NO";
    if (closeCopy)
    {
      v7 = @"YES";
    }

    *buf = 138478083;
    v13 = v6;
    v14 = 2114;
    v15 = v7;
    v8 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[%{private}@] Attempting to use custom close: %{public}@", buf, 0x16u);
  }

  if (closeCopy)
  {
    v9 = sub_1008();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_6BEC();
    }

    v11[0] = @"Using a custom close indicator is not supported.";
    v11[1] = @"useCustomClose";
    v10 = [NSArray arrayWithObjects:v11 count:2];
    [(APWebProcessMRAIDJSO *)self _callListenersOfEvent:0 withArguments:v10];
  }
}

- (void)addEventListener:(id)listener listener:(id)a4
{
  listenerCopy = listener;
  v7 = a4;
  v8 = sub_1008();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v14 = 138478083;
    *&v14[4] = objc_opt_class();
    *&v14[12] = 2114;
    *&v14[14] = listenerCopy;
    v9 = *&v14[4];
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[%{private}@] Adding event listener of type: %{public}@", v14, 0x16u);
  }

  v10 = [listenerCopy length];
  if (v7 && v10)
  {
    [(APWebProcessMRAIDJSO *)self lock];
    listenersDictionary = [(APWebProcessMRAIDJSO *)self listenersDictionary];
    v12 = [listenersDictionary objectForKeyedSubscript:listenerCopy];

    if (!v12)
    {
      v12 = +[NSMutableArray array];
      listenersDictionary2 = [(APWebProcessMRAIDJSO *)self listenersDictionary];
      [listenersDictionary2 setObject:v12 forKey:listenerCopy];
    }

    if (([v12 containsObject:{v7, *v14, *&v14[16]}] & 1) == 0)
    {
      [v12 addObject:v7];
    }

    [(APWebProcessMRAIDJSO *)self unlock];
  }
}

- (void)removeEventListener:(id)listener listener:(id)a4
{
  listenerCopy = listener;
  v7 = a4;
  v8 = sub_1008();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138478083;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = listenerCopy;
    v9 = v14;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "[%{private}@] Removing event listener of type: %{public}@", &v13, 0x16u);
  }

  if (listenerCopy)
  {
    v10 = [listenerCopy length];
    if (v7)
    {
      if (v10)
      {
        [(APWebProcessMRAIDJSO *)self lock];
        listenersDictionary = [(APWebProcessMRAIDJSO *)self listenersDictionary];
        v12 = [listenersDictionary objectForKeyedSubscript:listenerCopy];
        [v12 removeObject:v7];

        [(APWebProcessMRAIDJSO *)self unlock];
      }
    }
  }
}

- (void)_callListenersOfEvent:(int64_t)event withArguments:(id)arguments
{
  argumentsCopy = arguments;
  v7 = sub_1008();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [objc_opt_class() eventStringForEvent:event];
    *buf = 138478339;
    v28 = v8;
    v29 = 2114;
    v30 = v10;
    v31 = 2114;
    v32 = argumentsCopy;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "[%{private}@] Calling listeners of event %{public}@ with arguments %{public}@", buf, 0x20u);
  }

  v11 = [APWebProcessMRAIDJSO eventStringForEvent:event];
  [(APWebProcessMRAIDJSO *)self lock];
  listenersDictionary = [(APWebProcessMRAIDJSO *)self listenersDictionary];
  v13 = [listenersDictionary objectForKeyedSubscript:v11];
  v14 = [v13 copy];

  [(APWebProcessMRAIDJSO *)self unlock];
  if (argumentsCopy)
  {
    [NSArray arrayWithArray:argumentsCopy];
  }

  else
  {
    +[NSArray array];
  }
  v15 = ;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v22 + 1) + 8 * i) callWithArguments:{v15, v22}];
      }

      v18 = [v16 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }
}

- (APWebProcessMRAIDJSODelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)expandedSize
{
  width = self->_expandedSize.width;
  height = self->_expandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumExpandedSize
{
  width = self->_maximumExpandedSize.width;
  height = self->_maximumExpandedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end