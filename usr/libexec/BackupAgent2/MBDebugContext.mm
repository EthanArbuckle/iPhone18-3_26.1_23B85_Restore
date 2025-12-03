@interface MBDebugContext
+ (id)defaultDebugContext;
- (BOOL)BOOLForName:(id)name;
- (BOOL)isFlagSet:(id)set;
- (MBDebugContext)init;
- (NSDictionary)dictionary;
- (id)description;
- (id)performSelectorForName:(id)name;
- (id)performSelectorForName:(id)name withObject:(id)object;
- (id)valueForName:(id)name;
- (int)intForName:(id)name;
- (int64_t)time;
- (void)dealloc;
- (void)removeValueForName:(id)name;
- (void)setDelegate:(id)delegate andSelector:(SEL)selector forName:(id)name;
- (void)setFlag:(id)flag;
- (void)setSimulatedDate:(id)date;
- (void)setValue:(id)value forName:(id)name;
@end

@implementation MBDebugContext

+ (id)defaultDebugContext
{
  v2 = objc_alloc_init(MBDebugContext);

  return v2;
}

- (MBDebugContext)init
{
  v4.receiver = self;
  v4.super_class = MBDebugContext;
  v2 = [(MBDebugContext *)&v4 init];
  if (v2)
  {
    v2->_dictionary = [[NSMutableDictionary alloc] initWithDictionary:sub_10002C578()];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBDebugContext;
  [(MBDebugContext *)&v3 dealloc];
}

- (NSDictionary)dictionary
{
  v2 = [(NSMutableDictionary *)self->_dictionary copy];

  return v2;
}

- (int64_t)time
{
  simulatedDate = [(MBDebugContext *)self simulatedDate];
  if (simulatedDate)
  {
    [(NSDate *)simulatedDate timeIntervalSince1970];
    return v3;
  }

  else
  {

    return time(0);
  }
}

- (void)setSimulatedDate:(id)date
{
  if (date)
  {
    [(MBDebugContext *)self setValue:date forName:@"SimulatedSystemDate"];
  }

  else
  {
    [(MBDebugContext *)self removeValueForName:@"SimulatedSystemDate"];
  }
}

- (BOOL)isFlagSet:(id)set
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  LOBYTE(set) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{set), "BOOLValue"}];
  objc_sync_exit(dictionary);
  return set;
}

- (void)setFlag:(id)flag
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary setObject:&__kCFBooleanTrue forKeyedSubscript:flag];

  objc_sync_exit(dictionary);
}

- (void)setValue:(id)value forName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary setObject:value forKeyedSubscript:name];

  objc_sync_exit(dictionary);
}

- (void)removeValueForName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  [(NSMutableDictionary *)self->_dictionary removeObjectForKey:name];

  objc_sync_exit(dictionary);
}

- (id)valueForName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKeyedSubscript:name];
  objc_sync_exit(dictionary);
  return v6;
}

- (BOOL)BOOLForName:(id)name
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  LOBYTE(name) = [-[NSMutableDictionary objectForKeyedSubscript:](self->_dictionary objectForKeyedSubscript:{name), "BOOLValue"}];
  objc_sync_exit(dictionary);
  return name;
}

- (int)intForName:(id)name
{
  v3 = [(MBDebugContext *)self valueForName:name];

  return [v3 intValue];
}

- (void)setDelegate:(id)delegate andSelector:(SEL)selector forName:(id)name
{
  v7[0] = delegate;
  v7[1] = NSStringFromSelector(selector);
  [(MBDebugContext *)self setValue:[NSArray forName:"arrayWithObjects:count:" arrayWithObjects:v7 count:2], name];
}

- (id)performSelectorForName:(id)name
{
  result = [(MBDebugContext *)self valueForName:name];
  if (result)
  {
    v4 = result;
    v5 = [result objectAtIndexedSubscript:0];
    v6 = NSSelectorFromString([v4 objectAtIndexedSubscript:1]);

    return [v5 performSelector:v6];
  }

  return result;
}

- (id)performSelectorForName:(id)name withObject:(id)object
{
  result = [(MBDebugContext *)self valueForName:name];
  if (result)
  {
    v6 = result;
    v7 = [result objectAtIndexedSubscript:0];
    v8 = NSSelectorFromString([v6 objectAtIndexedSubscript:1]);

    return [v7 performSelector:v8 withObject:object];
  }

  return result;
}

- (id)description
{
  dictionary = self->_dictionary;
  objc_sync_enter(dictionary);
  v4 = self->_dictionary;
  v5 = MBStringWithDictionary();
  objc_sync_exit(dictionary);
  return v5;
}

@end