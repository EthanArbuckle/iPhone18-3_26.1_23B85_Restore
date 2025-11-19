id sub_100001714()
{
  if (qword_100008630 != -1)
  {
    sub_1000022E8();
  }

  v1 = qword_100008628;

  return v1;
}

void add_binary_info_to_binary_dictionary(void *a1, void *a2)
{
  v21 = a1;
  v3 = a2;
  if (v21 && v3)
  {
    v4 = [v3 uuid];
    v20 = [v3 name];
    v19 = [v3 path];
    v5 = [v3 bundleIdentifier];
    v6 = [v3 bundleVersion];
    v7 = [v3 bundleShortVersion];
    v8 = [v3 binaryVersion];
    v9 = [v3 segmentWithName:@"__TEXT_EXEC"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 length];
    }

    else
    {
      v12 = [v3 segmentWithName:@"__TEXT"];
      v13 = v12;
      if (!v12)
      {
        v12 = v3;
      }

      v11 = [v12 length];
    }

    v14 = [NSNumber numberWithUnsignedLongLong:v11];
    if (!v14)
    {
      sub_100002074();
    }

    v15 = v14;
    [v4 UUIDString];
    v16 = v18 = v4;
    [v21 setObject:v16 forKeyedSubscript:@"UUID_String"];

    [v21 setObject:v15 forKeyedSubscript:@"Size"];
    v17 = [NSNumber numberWithBool:v10 != 0];
    [v21 setObject:v17 forKeyedSubscript:@"TEXT_EXEC"];

    [v21 setObject:v20 forKeyedSubscript:@"Name"];
    [v21 setObject:v19 forKeyedSubscript:@"Path"];
    [v21 setObject:v5 forKeyedSubscript:@"BundleID"];
    [v21 setObject:v6 forKeyedSubscript:@"BundleVersion"];
    [v21 setObject:v7 forKeyedSubscript:@"BundleShortVersion"];
    [v21 setObject:v8 forKeyedSubscript:@"BinaryVersion"];
  }
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(TailspinSymbolicationServer);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001BFC(id a1)
{
  qword_100008628 = os_log_create("com.apple.tailspin", "SymbolicationServer");

  _objc_release_x1();
}

void sub_100001C40(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = sub_100001714();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000023B0(a1, v7, v9);
  }

  v10 = [*(a1 + 32) offsetIntoSegment];
  v11 = v7;
  v12 = v8;
  v13 = v11;
  if (!v13)
  {
    sub_100002074();
  }

  v14 = v13;

  v15 = [[NSMutableDictionary alloc] initWithCapacity:8];
  if (!v15)
  {
    sub_100002074();
  }

  v16 = v15;
  v17 = [v14 name];
  v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v10 - [v14 offsetIntoSegment]);
  if (!v18)
  {
    sub_100002074();
  }

  v19 = v18;
  v35 = a4;
  v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 length]);
  if (!v20)
  {
    sub_100002074();
  }

  v21 = v20;
  [v16 setObject:v17 forKeyedSubscript:@"Name"];
  [v16 setObject:v21 forKeyedSubscript:@"Length"];
  [v16 setObject:v19 forKeyedSubscript:@"Offset"];
  if (v12)
  {
    v34 = [v12 filePath];
    if (!v34)
    {
      sub_100002074();
    }

    v32 = v17;
    v22 = [v12 lineNum];
    if (v22)
    {
      v23 = [NSNumber numberWithUnsignedInt:v22];
    }

    else
    {
      v23 = 0;
    }

    v24 = [v12 columnNum];
    v33 = a1;
    if (v24)
    {
      v25 = [NSNumber numberWithUnsignedInt:v24];
    }

    else
    {
      v25 = 0;
    }

    v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v10 - [v12 offsetIntoSegment]);
    if (!v26)
    {
      sub_100002074();
    }

    v27 = v26;
    v28 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 length]);
    if (!v28)
    {
      sub_100002074();
    }

    v29 = v28;
    [v16 setObject:v34 forKeyedSubscript:@"FileName"];
    if (v23)
    {
      [v16 setObject:v23 forKeyedSubscript:@"LineNumber"];
    }

    if (v25)
    {
      [v16 setObject:v25 forKeyedSubscript:@"ColNumber"];
    }

    [v16 setObject:v27 forKeyedSubscript:@"SourceOffset"];
    [v16 setObject:v29 forKeyedSubscript:@"SourceLength"];

    v17 = v32;
    a1 = v33;
  }

  if (v35)
  {
    [*(a1 + 48) addObject:v16];
  }

  else
  {
    [v16 setObject:*(a1 + 48) forKeyedSubscript:@"InlineSymbols"];
    v30 = *(a1 + 56);
    v31 = [*(a1 + 64) stringValue];
    [v30 setObject:v16 forKeyedSubscript:v31];
  }
}

void sub_100001FCC(void *a1, void *a2, NSObject *a3)
{
  v5 = [a1 UUIDString];
  [a2 count];
  sub_100001FB4();
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "got request for %@ with num_offsets %zu", v6, 0x16u);
}

void sub_100002074()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_100002090(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_100001FA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100002128(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  sub_100001FA4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100002248(void *a1, void *a2)
{
  v3 = [a1 UUIDString];
  [a2 count];
  sub_100001FB4();
  sub_100001FA4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_1000022FC(uint64_t a1)
{
  v6 = [NSString stringWithUTF8String:a1];
  sub_100001FA4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void sub_1000023B0(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = [*(a1 + 32) offsetIntoSegment];
  v7 = [*(a1 + 40) name];
  v8 = [v7 UTF8String];
  v9 = [a2 name];
  v10 = [v9 UTF8String];
  v11 = [*(a1 + 32) offsetIntoSegment];
  v12 = 134218754;
  v13 = v6;
  v14 = 2080;
  v15 = v8;
  v16 = 2080;
  v17 = v10;
  v18 = 2048;
  v19 = v11 - [a2 offsetIntoSegment];
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "%llx in %s -> %s + %llx", &v12, 0x2Au);
}