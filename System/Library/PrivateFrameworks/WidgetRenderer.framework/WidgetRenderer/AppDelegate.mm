@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (uint64_t)applicationDidReceiveMemoryWarning:;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1DAD66DBC(sessionCopy);

  return v12;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1DAD66C2C(&qword_1ECC07EE8, type metadata accessor for LaunchOptionsKey);
    sub_1DAED1C1C();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_1DAD94560();

  return v8 & 1;
}

- (uint64_t)applicationDidReceiveMemoryWarning:
{
  v0 = sub_1DAECED2C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED21BC();
  if (qword_1EE00A848 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    sub_1DAECED1C();
    sub_1DAECECFC();
    (*(v1 + 8))(v4, v0);
    sharedApplication = [objc_opt_self() sharedApplication];
    connectedScenes = [sharedApplication connectedScenes];

    v0 = sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
    v4 = sub_1DAD8D6A4(&qword_1EE00A890, qword_1EE00A898, 0x1E69DCE70);
    v7 = sub_1DAED1F6C();

    v23[2] = v0;
    if ((v7 & 0xC000000000000001) != 0)
    {
      sub_1DAED242C();
      sub_1DAED1F9C();
      v7 = v25;
      v8 = v26;
      v9 = v27;
      v1 = v28;
      v10 = v29;
    }

    else
    {
      v1 = 0;
      v11 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v9 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v7 + 56);
    }

    v23[1] = v9;
    v14 = (v9 + 64) >> 6;
    while (v7 < 0)
    {
      v4 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v19 = sub_1DAED24BC();
      if (!v19)
      {
        return sub_1DAD70B20();
      }

      v23[3] = v19;
      swift_dynamicCast();
      v18 = v24;
      v17 = v1;
      v0 = v10;
      if (!v24)
      {
        return sub_1DAD70B20();
      }

LABEL_17:
      if ([v18 delegate])
      {
        type metadata accessor for WidgetSceneDelegate();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          v4 = v20;
          sub_1DADE1F7C();
LABEL_24:
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      if ([v18 delegate])
      {
        type metadata accessor for ActivitySceneDelegateBase();
        v21 = swift_dynamicCastClass();
        if (!v21)
        {

          swift_unknownObjectRelease();
          goto LABEL_26;
        }

        v4 = v21;
        sub_1DAE76B2C();
        goto LABEL_24;
      }

LABEL_25:

LABEL_26:
      v1 = v17;
      v10 = v0;
    }

    v15 = v1;
    v16 = v10;
    v17 = v1;
    if (v10)
    {
      break;
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        return sub_1DAD70B20();
      }

      v16 = *(v8 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

LABEL_13:
  v0 = (v16 - 1) & v16;
  v18 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
  if (v18)
  {
    goto LABEL_17;
  }

  return sub_1DAD70B20();
}

@end