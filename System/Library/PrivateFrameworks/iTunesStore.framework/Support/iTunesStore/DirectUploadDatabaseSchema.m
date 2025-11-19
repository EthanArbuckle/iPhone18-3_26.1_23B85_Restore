@interface DirectUploadDatabaseSchema
+ (id)databasePath;
- (void)createSchemaInDatabase:(id)a3;
@end

@implementation DirectUploadDatabaseSchema

+ (id)databasePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 firstObject];

  v4 = [[NSArray alloc] initWithObjects:{v3, @"com.apple.itunesstored", @"uploads.sqlitedb", 0}];
  v5 = [NSString pathWithComponents:v4];

  return v5;
}

- (void)createSchemaInDatabase:(id)a3
{
  v9 = a3;
  v3 = [v9 userVersion];
  if (v3)
  {
    if (v3 > 12)
    {
      goto LABEL_29;
    }

    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (v3 <= 6)
          {
            if (v3 > 3)
            {
              if (v3 == 4)
              {
                [v9 executeSQL:@"ALTER TABLE upload ADD COLUMN owns_asset INTEGER DEFAULT 0;"];
                v3 = 5;
              }

              else if (v3 == 5)
              {
                v7 = v9;
                [v7 executeSQL:@"ALTER TABLE upload ADD COLUMN parent_relationship_type TEXT;"];
                [v7 executeSQL:@"ALTER TABLE upload ADD COLUMN parent_upload_id INTEGER DEFAULT 0;"];

                v3 = 6;
              }

              else
              {
                v4 = v9;
                [v4 executeSQL:@"ALTER TABLE upload ADD COLUMN preview_frame_time DOUBLE DEFAULT 0;"];
                [v4 executeSQL:@"ALTER TABLE upload ADD COLUMN upload_time DOUBLE;"];

                v3 = 7;
              }
            }

            else
            {
              switch(v3)
              {
                case 1:
                  v6 = v9;
                  [v6 executeSQL:{@"CREATE TABLE IF NOT EXISTS content_item (pid INTEGER, post_id INTEGER NOT NULL, item_id TEXT, type TEXT, PRIMARY KEY (pid));"}];
                  [v6 executeSQL:@"ALTER TABLE post ADD COLUMN author_type TEXT;"];

                  v3 = 2;
                  break;
                case 2:
                  [v9 executeSQL:@"ALTER TABLE upload ADD COLUMN failure_count INTEGER DEFAULT 0;"];
                  v3 = 3;
                  break;
                case 3:
                  [v9 executeSQL:@"ALTER TABLE upload ADD COLUMN asset_token_type TEXT;"];
                  v3 = 4;
                  break;
              }
            }
          }

          if (v3 > 9)
          {
            break;
          }

          if (v3 == 7)
          {
            [v9 executeSQL:@"ALTER TABLE post ADD COLUMN is_failed INTEGER DEFAULT 0;"];
            v3 = 8;
          }

          else if (v3 == 8)
          {
            [v9 executeSQL:@"ALTER TABLE upload ADD COLUMN album_id TEXT;"];
            v3 = 9;
          }

          else
          {
            [v9 executeSQL:@"ALTER TABLE artist ADD COLUMN order_index INTEGER DEFAULT 0;"];
            v3 = 10;
          }
        }

        if (v3 != 10)
        {
          break;
        }

        [v9 executeSQL:@"ALTER TABLE post ADD COLUMN is_attributed INTEGER DEFAULT 0;"];
        v3 = 11;
      }

      if (v3 != 11)
      {
        break;
      }

      v5 = v9;
      [v5 executeSQL:@"ALTER TABLE post ADD COLUMN activity_id TEXT;"];
      [v5 executeSQL:@"ALTER TABLE post ADD COLUMN poll_count INTEGER DEFAULT 0;"];
      [v5 executeSQL:@"ALTER TABLE post ADD COLUMN poll_interval DOUBLE DEFAULT 0;"];

      v3 = 12;
    }

    v8 = @"ALTER TABLE post ADD COLUMN poll_duration DOUBLE DEFAULT 10800;";
  }

  else
  {
    [v9 executeSQL:{@"CREATE TABLE IF NOT EXISTS artist (pid INTEGER, upload_id INTEGER NOT NULL, artist_id TEXT, order_index INTEGER DEFAULT 0, name TEXT, PRIMARY KEY (pid));"}];
    [v9 executeSQL:{@"CREATE TABLE IF NOT EXISTS content_item (pid INTEGER, post_id INTEGER NOT NULL, item_id TEXT, type TEXT, PRIMARY KEY (pid));"}];
    [v9 executeSQL:{@"CREATE TABLE IF NOT EXISTS external_target (pid INTEGER, access_token TEXT, page_access_token TEXT, page_id TEXT, post_id INTEGER NOT NULL, service_type INTEGER NOT NULL, PRIMARY KEY (pid));"}];
    [v9 executeSQL:{@"CREATE TABLE IF NOT EXISTS post (pid INTEGER, account_id INTEGER NOT NULL, activity_id TEXT, author_id TEXT, author_type TEXT, creation_time DOUBLE, failure_count INTEGER DEFAULT 0, is_attributed INTEGER DEFAULT 0, is_failed INTEGER DEFAULT 0, message TEXT, poll_count INTEGER DEFAULT 0, poll_interval DOUBLE DEFAULT 0, poll_duration DOUBLE DEFAULT 10800, source_app TEXT, PRIMARY KEY (pid));"}];
    v8 = @"CREATE TABLE IF NOT EXISTS upload (pid INTEGER,album_id TEXT,asset_token TEXT,asset_token_type TEXT,asset_url TEXT NOT NULL,category_name TEXT,creation_time DOUBLE,description TEXT,error_code INTEGER,error_domain TEXT,error_message TEXT,failure_count INTEGER DEFAULT 0,is_explicit INTEGER DEFAULT 0,kind TEXT,owns_asset INTEGER DEFAULT 0,parent_relationship_type TEXT,parent_upload_id INTEGER DEFAULT 0,preview_frame_time DOUBLE DEFAULT 0,post_id INTEGER,source_app TEXT,state INTEGER DEFAULT 0,subtitle TEXT,thumbnail_url TEXT,title TEXT,upload_time DOUBLE,uti TEXT NOT NULL,PRIMARY KEY (pid));";
  }

  [v9 executeSQL:v8];
  [v9 setUserVersion:13];
LABEL_29:
}

@end