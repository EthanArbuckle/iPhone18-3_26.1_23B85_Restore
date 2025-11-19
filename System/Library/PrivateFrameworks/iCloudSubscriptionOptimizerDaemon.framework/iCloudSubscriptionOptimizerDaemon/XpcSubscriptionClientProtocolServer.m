@interface XpcSubscriptionClientProtocolServer
- (void)request:(id)a3 withReply:(id)a4;
@end

@implementation XpcSubscriptionClientProtocolServer

- (void)request:(id)a3 withReply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = qword_280A32E50;
  v8 = a3;

  if (v7 != -1)
  {
    swift_once();
  }

  v9 = sub_275B7A96C();
  __swift_project_value_buffer(v9, qword_280A33B40);
  sub_275B7A91C();
  v10 = *MEMORY[0x277D7F508];
  v11 = swift_allocObject();
  *(v11 + 16) = sub_275B76E44;
  *(v11 + 24) = v6;

  XpcSubscriptionClientProtocolServer.request(_:withReply:)(v8 + v10, sub_275B77D70, v11);
}

@end