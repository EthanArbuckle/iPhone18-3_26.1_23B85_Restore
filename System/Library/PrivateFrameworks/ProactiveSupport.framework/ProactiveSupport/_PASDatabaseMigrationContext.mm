@interface _PASDatabaseMigrationContext
- (id)description;
@end

@implementation _PASDatabaseMigrationContext

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  filename = [(_PASSqliteDatabase *)self->db filename];
  v5 = [v3 initWithFormat:@"<_PASDatabaseMigrationContext db:%@ v:%u mc:%tu>", filename, self->version, -[NSDictionary count](self->migrations, "count")];

  return v5;
}

@end