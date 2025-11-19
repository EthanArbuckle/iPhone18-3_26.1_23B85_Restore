@interface _UIViewPowerLogStatistics
+ (uint64_t)submitStatistics;
- (_UIViewPowerLogStatistics)init;
@end

@implementation _UIViewPowerLogStatistics

- (_UIViewPowerLogStatistics)init
{
  v3.receiver = self;
  v3.super_class = _UIViewPowerLogStatistics;
  return [(_UIViewPowerLogStatistics *)&v3 init];
}

+ (uint64_t)submitStatistics
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = sub_18A4A4378();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (byte_1EA93138C << 32) | (byte_1EA931343 << 24) | (byte_1ED48DBB8 << 16) | (byte_1EA931119 << 8);
  v5 = byte_1EA930C52;
  v6 = dword_1ED48EFB8;
  if (!dword_1ED48EFB8)
  {
    HIDWORD(v12) = 0;
    notify_register_check("com.apple.UIKit.ScrollPocketStatistics", &v12 + 1);
    v6 = HIDWORD(v12);
    dword_1ED48EFB8 = HIDWORD(v12);
  }

  notify_set_state(v6, v4 | v5);
  notify_post("com.apple.UIKit.ScrollPocketStatistics");
  if (qword_1ED48F098 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_1ED48EFA0);
  (*(v1 + 16))(v3, v7, v0);
  v8 = sub_18A4A4358();
  v9 = sub_18A4A7968();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 16909568;
    *(v10 + 4) = byte_1ED48DBB8;
    *(v10 + 5) = 258;
    *(v10 + 7) = byte_1EA931119;
    *(v10 + 8) = 258;
    *(v10 + 10) = byte_1EA930C52;
    *(v10 + 11) = 258;
    *(v10 + 13) = byte_1EA931343;
    *(v10 + 14) = 258;
    *(v10 + 16) = byte_1EA93138C;
    _os_log_impl(&dword_188A29000, v8, v9, "statistics: max %{public}hhu hard pockets, %{public}hhu dynamic pockets, %{public}hhu other pockets, %{public}hhu total pockets, %{public}hhu glass groups", v10, 0x11u);
    MEMORY[0x18CFEA5B0](v10, -1, -1);
  }

  result = (*(v1 + 8))(v3, v0);
  byte_1ED48DBB8 = 0;
  byte_1EA931119 = 0;
  byte_1EA930C52 = 0;
  byte_1EA93138C = 0;
  return result;
}

@end